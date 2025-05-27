from pyniryo import *
import sys
import numpy as np
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2
import math

IM_EXTRACT_SMALL_SIDE_PIXELS = 200
# Initial variables
tool_used = ToolID.GRIPPER_1
simulation_mode = True
normalized_depth_image = None
latest_depth_image = None
list_good_candidates = None
height_standard = 350

if simulation_mode:
    robot_ip_address, workspace_name = "127.0.0.1", "gazebo_1"
else:
    robot_ip_address, workspace_name = "10.10.10.10", "workspace_1"

grid_dimension = (4, 4)  # conditioning grid dimension
vision_process_on_robot = False  # boolean to indicate if the image processing append on the Robot
display_stream = True  # Only used if vision on computer

# The pose from where the image processing happens
observation_pose = PoseObject(
    x=0.25, y=-0.0, z=0.35,
    roll=0, pitch=1.84, yaw=0.0,
)

# Center of the conditioning area
center_conditioning_pose = PoseObject(
    x=0.0, y=-0.25, z=0.11,
    roll=-0.0, pitch=1.57, yaw=-1.57
)

# Callback method is getting a depth image from the topic /camera/depth/image_raw
def depth_img_callback(msg):
    global normalized_depth_image, latest_depth_image
    bridge = CvBridge()
    latest_depth_image = bridge.imgmsg_to_cv2(msg)
    normalized_depth_image = cv2.normalize(latest_depth_image, None, 0, 255, cv2.NORM_MINMAX, dtype=cv2.CV_8U)

def start_subscriber():
    rospy.init_node('depth_image_subscriber', anonymous=True)
    rospy.Subscriber("/camera/depth/image_raw", Image, depth_img_callback)

# -- MAIN PROGRAM
def process(niryo_robot):
    """

    :type niryo_robot: NiryoRobot
    :rtype: None
    """
    # Initializing variables
    obj_pose = None
    try_without_success = 0
    count = 0
    mtx, dist = niryo_robot.get_camera_intrinsics()
    height_offset = 0.0

    color = "BLUE"
    if len(sys.argv) > 1:
        color = sys.argv[1]
    if color not in ["RED", "BLUE", "GREEN"] :
        print("Try again with a different Color: RED, BLUE or GREEN")
        sys.exit()

    count_other = 0
    other = False
  
    # Loop
    while try_without_success < 5:
        # Moving to observation pose
        niryo_robot.move_pose(observation_pose)
        niryo_robot.wait(3)

        img_compressed = niryo_robot.get_img_compressed()
        img = uncompress_image(img_compressed)
        img = undistort_image(img, mtx, dist)

        # extracting working area
        im_work = extract_img_workspace(img, workspace_ratio=1.0)
        if im_work is None:
            print("Unable to find markers")
            try_without_success += 1
            if display_stream:
                cv2.imshow("Last image", img)
                cv2.waitKey(25)
            continue

        # Applying Threshold on ObjectColor
        if color in ["RED"]:
            color_hsv_setting = ColorHSV.RED.value
        if color in ["BLUE"]:
            color_hsv_setting = ColorHSV.BLUE.value
        if color in ["GREEN"]:
            color_hsv_setting = ColorHSV.GREEN.value
        img_thresh = threshold_hsv(im_work, *color_hsv_setting)

        if display_stream:
            show_img("Depth Image", normalized_depth_image)
            show_img("Last image", img, wait_ms=100)
            show_img("Image thresh", img_thresh, wait_ms=100)
        # Getting biggest contour/blob from threshold image
        contour = biggest_contour_finder(img_thresh)
        if contour is None or len(contour) == 0:
            obj_found = False
        else:
            img_thresh_rgb_w_contour = draw_contours(img_thresh, [contour])

            # Getting contour/blob center and angle
            cx, cy = get_contour_barycenter(contour)

            print("cx: ", cx, "cy: ", cy)

            img_thresh_rgb_w_contour = draw_barycenter(img_thresh_rgb_w_contour, cx, cy)

            cx_rel, cy_rel = relative_pos_from_pixels(im_work, cx, cy)

            angle = get_contour_angle(contour)

            img_thresh_rgb_w_contour = draw_angle(img_thresh_rgb_w_contour, cx, cy, angle)

            show_img("Image thresh", img_thresh_rgb_w_contour, wait_ms=30)

            #initialize height_offset
            height_offset = 0.0
            
            if normalized_depth_image is not None and latest_depth_image is not None:

                im_work_heigth, im_work_width = im_work.shape[:2]
                depth_heigth, depth_width = latest_depth_image.shape[:2] # Dimensions of the raw depth image

                target_cx_depth = cx
                target_cy_depth = cy

                print("im_work dims: {}x{}".format(im_work_width, im_work_heigth))
                print("Depth img dims: {}x{}, Scaled target for depth: ({}, {})".format(depth_width, depth_heigth, target_cx_depth, target_cy_depth))

                depth_value_normalized = -1 # invalid

                # Copy of normalized Depth Image for visualisation 
                # Converting to BGR for red circle
                depth_image_display = extract_img_for_depth(img, normalized_depth_image, workspace_ratio=1.0)
                depth_image_display = cv2.cvtColor(depth_image_display, cv2.COLOR_GRAY2BGR)
                #extract raw img for exact depth values for height calculation
                depth_image_raw = extract_img_for_depth(img, latest_depth_image, workspace_ratio=1.0)

                if 0 <= target_cx_depth < depth_width and 0 <= target_cy_depth < depth_heigth:
                    #get normalized and raw depth values for coords
                    current_depth_pixel_value = depth_image_raw[target_cy_depth, target_cx_depth]
                    depth_value_normalized = depth_image_display[target_cy_depth, target_cx_depth][0]
                    # give normalized and raw depth value out in console
                    print("Raw depth value at scaled coords: {}".format(current_depth_pixel_value))
                    print("Normalized depth value at scaled coords: {}".format(depth_value_normalized))
                    # Draw red circle on coordinates in depth image
                    cv2.circle(depth_image_display, (target_cx_depth, target_cy_depth), 4, (0, 0, 255), 2)
                else:
                    print("Target coordinates for depth are out of bounds.")
                
                #height calculation from depth value
                height = height_standard - current_depth_pixel_value
                if height < 0:
                    height = 0

                # Show depth image with red circle
                if display_stream:
                    show_img("Depth Image with Target", depth_image_display, wait_ms=30)

                     # height_offset based on depth value
                if depth_value_normalized != -1: # only if depth_value is valid
                    #scale the height difference to the height offset for the pick function
                    height_offset = height * 0.0016
                    print("Object classified with heigth_offset: {})".format(height_offset))
                
                else: # fallback for no valid depth value
                    height_offset = 0.0 
                    print("Object classification defaulted to 'normal' due to no valid depth value.")
            
            else: # depth images are None
                print("Depth image not available for height adjustment. Using default height_offset.")
                height_offset = 0.0
                #show depth image for eventual information if it's not None
                if display_stream and normalized_depth_image is not None:
                    depth_image_display_fallback = cv2.cvtColor(normalized_depth_image, cv2.COLOR_GRAY2BGR)
                    show_img("Depth Image (Unavailable for Calc)", depth_image_display_fallback, wait_ms=30)


            # Getting object world pose from relative pose
            obj_pose = niryo_robot.get_target_pose_from_rel(workspace_name,
                                                            height_offset,
                                                            x_rel=cx_rel, y_rel=cy_rel,
                                                            yaw_rel=angle)
            obj_found = True
        if not obj_found:
            color_hsv_setting = ColorHSV.ANY.value
            img_thresh = threshold_hsv(im_work, *color_hsv_setting)
            if display_stream:
                show_img("Last image", img, wait_ms=100)
                show_img("Image thresh", img_thresh, wait_ms=100)
            contour = biggest_contour_finder(img_thresh)
            if contour is None or len(contour) == 0:
                print("No blob found")
                obj_found = False
            else:
                img_thresh_rgb_w_contour = draw_contours(img_thresh, [contour])
                cx, cy = get_contour_barycenter(contour)
                img_thresh_rgb_w_contour = draw_barycenter(img_thresh_rgb_w_contour, cx, cy)
                cx_rel, cy_rel = relative_pos_from_pixels(im_work, cx, cy)
                angle = get_contour_angle(contour)
                img_thresh_rgb_w_contour = draw_angle(img_thresh_rgb_w_contour, cx, cy, angle)
                show_img("Image thresh", img_thresh_rgb_w_contour, wait_ms=30)
                obj_pose = niryo_robot.get_target_pose_from_rel(workspace_name,
                                                            height_offset,
                                                            x_rel=cx_rel, y_rel=cy_rel,
                                                            yaw_rel=angle)
                obj_found = True
                other = True
            if not obj_found: 	    
                try_without_success += 1
                continue
        # Everything is good, so we going to object
        niryo_robot.pick_from_pose(obj_pose)

        # Computing new place pose
        if other == False:
            offset_x = count % grid_dimension[0] - grid_dimension[0] // 2 
            offset_y = (count // grid_dimension[1]) % 3 - grid_dimension[1] // 2
            offset_z = count // (grid_dimension[0] * grid_dimension[1])
            place_pose = center_conditioning_pose.copy_with_offsets(0.05 * offset_x, 0.05 * offset_y, 0.025 * offset_z)
        if other == True:
            offset_x = count_other % grid_dimension[0] - grid_dimension[0] // 2     
            offset_y = ((count_other // grid_dimension[1]) % 3 - grid_dimension[1] // 2) + 2
            offset_z = count_other // (grid_dimension[0] * grid_dimension[1])
            place_pose = center_conditioning_pose.copy_with_offsets(0.05 * offset_x, 0.05 * offset_y, 0.025 * offset_z)
            other = False
            count_other += 1
        # Placing
        niryo_robot.place_from_pose(place_pose)

        try_without_success = 0
        count += 1


def extract_img_for_depth(img, depth_img, workspace_ratio=1.0):
    """
    Extract working area from an image thanks to 4 Niryo's markers
    :param img: OpenCV image which contain 4 Niryo's markers
    :param workspace_ratio: Ratio between the width and the height of the area represented by the markers
    :return: extracted and warped working area image
    """
    global list_good_candidates

    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

    img_thresh = cv2.adaptiveThreshold(gray, maxValue=255, adaptiveMethod=cv2.ADAPTIVE_THRESH_MEAN_C,
                                       thresholdType=cv2.THRESH_BINARY, blockSize=15, C=25)

    list_good_candidates = find_markers_from_img_thresh(img_thresh)
    if not list_good_candidates or len(list_good_candidates) > 6:
        return None

    if len(list_good_candidates) == 4:
        list_good_candidates = sort_markers_detection(list_good_candidates)
    else:
        list_good_candidates = complicated_sort_markers(list_good_candidates, workspace_ratio=workspace_ratio)
        if list_good_candidates is None:
            return None

    im_cut = extract_sub_img(depth_img, list_good_candidates, ratio_w_h=workspace_ratio)
    return im_cut

def find_markers_from_img_thresh(img_thresh, max_dist_between_centers=3, min_radius_circle=4,
                                 max_radius_circle=35, min_radius_marker=7):
    contours = cv2.findContours(img_thresh, cv2.RETR_LIST, cv2.CHAIN_APPROX_SIMPLE)[-2]
    list_potential_markers = []
    for cnt in contours:
        (x, y), radius = cv2.minEnclosingCircle(cnt)
        if not min_radius_circle < radius < max_radius_circle:
            continue
        center = (int(round(x)), int(round(y)))
        radius = int(radius)
        list_potential_markers.append(PotentialMarker(center, radius, cnt))

    list_potential_markers = sorted(list_potential_markers, key=lambda m: m.x)
    list_good_candidates = []

    for i, potential_marker in enumerate(list_potential_markers):
        if potential_marker.is_merged:
            continue
        marker1 = Marker(potential_marker)
        center_marker = marker1.get_center()

        for potential_marker2 in list_potential_markers[i + 1:]:
            if potential_marker.is_merged:
                continue
            center_potential = potential_marker2.get_center()
            if center_potential[0] - center_marker[0] > max_dist_between_centers:
                break
            dist = euclidean_dist_2_pts(center_marker, center_potential)
            if dist <= max_dist_between_centers:
                marker1.add_circle(potential_marker2)
                center_marker = marker1.get_center()

        if marker1.nb_circles() > 2 and marker1.radius >= min_radius_marker:
            list_good_candidates.append(marker1)
            marker1.get_id_from_slice(img_thresh)

    return list_good_candidates

def sort_markers_detection(list_markers):
    def rotate_list(list_, n):
        return list_[n:] + list_[:n]

    list_sort_y = sorted(list_markers, key=lambda m: m.cy)

    top1, top2, bottom1, bottom2 = list_sort_y

    if top1.cx < top2.cx:
        top_left = top1
        top_right = top2
    else:
        top_left = top2
        top_right = top1

    if bottom1.cx < bottom2.cx:
        bottom_left = bottom1
        bottom_right = bottom2
    else:
        bottom_left = bottom2
        bottom_right = bottom1

    list_markers_unsorted = [top_left, top_right, bottom_right, bottom_left]
    list_id = [marker.identifiant for marker in list_markers_unsorted]

    if list_id.count("A") == 1:
        list_corners_sorted = rotate_list(list_markers_unsorted, n=list_id.index("A"))
    elif list_id.count("B") == 1:
        list_corners_sorted = rotate_list(list_markers_unsorted, n=list_id.index("B"))
    else:
        return list_markers_unsorted

    return list_corners_sorted


def complicated_sort_markers(list_markers, workspace_ratio):
    import itertools

    if workspace_ratio >= 1.0:
        target_w_area = int(round(workspace_ratio * 200))
        target_h_area = 200
    else:
        ratio_w_h = 1.0 / workspace_ratio
        target_h_area = int(round(ratio_w_h * 200))
        target_w_area = 200
    list_id = [marker.identifiant for marker in list_markers]
    count_type_a = list_id.count("A")
    count_type_b = list_id.count("B")
    if count_type_a < 3 > count_type_b:
        return None
    if count_type_a < count_type_b:
        id_first_marker = "A"
        id_second_marker = "B"
    else:
        id_first_marker = "B"
        id_second_marker = "A"
    list_combinaisons = []
    list_marker_1 = [marker for marker in list_markers if marker.identifiant == id_first_marker]
    list_marker_2 = [marker for marker in list_markers if marker.identifiant == id_second_marker]
    if list_marker_1:
        list_combinaisons_marker_2 = itertools.combinations(list_marker_2, 3)
        for marker1 in list_marker_1:
            for combi_markers2 in list_combinaisons_marker_2:
                combin = [marker1] + list(combi_markers2)

                list_combinaisons.append(sort_markers_detection(combin))
    else:
        for combinaison in itertools.combinations(list_marker_2, 4):
            list_combinaisons.append(combinaison)
    if not list_combinaisons:
        return None

    final_pts = np.array(
        [[0, 0], [target_w_area - 1, 0],
         [target_w_area - 1, target_h_area - 1], [0, target_h_area - 1]],
        dtype=np.float32)
    list_det_transfo_matrix = []
    for combin in list_combinaisons:
        points_grid = np.array([[mark.cx, mark.cy] for mark in combin], dtype=np.float32)

        transfo_matrix = cv2.getPerspectiveTransform(points_grid, final_pts)
        list_det_transfo_matrix.append(np.linalg.det(transfo_matrix))

    best_combin_ind = np.argmin(abs(np.array(list_det_transfo_matrix) - 1))
    best_markers = list_combinaisons[best_combin_ind]
    return best_markers

def extract_sub_img(img, list_corners, ratio_w_h=1.0):
    """
    Extract an small image from a big one using a Perspective Warp
    :param img: Big image from which the small one will be extracted
    :param list_corners: corners list of the small image
    :param ratio_w_h: Width over Height ratio of the area. It helps to not stretch the working area image
    :return: extracted and warped image
    """
    if list_corners is None or len(list_corners) != 4:
        return None

    if ratio_w_h >= 1.0:
        target_w_area = int(round(ratio_w_h * IM_EXTRACT_SMALL_SIDE_PIXELS))
        target_h_area = IM_EXTRACT_SMALL_SIDE_PIXELS
    else:
        ratio_w_h = 1.0 / ratio_w_h
        target_h_area = int(round(ratio_w_h * IM_EXTRACT_SMALL_SIDE_PIXELS))
        target_w_area = IM_EXTRACT_SMALL_SIDE_PIXELS

    points_grid = []

    for marker in list_corners:
        points_grid.append(marker.get_center())
    points_grid = np.array(points_grid, dtype=np.float32)
    final_pts = np.array(
        [[0, 0], [target_w_area - 1, 0],
         [target_w_area - 1, target_h_area - 1], [0, target_h_area - 1]],
        dtype=np.float32)
    transfo_matrix = cv2.getPerspectiveTransform(points_grid, final_pts)
    # print transfo_matrix
    # print np.linalg.det(transfo_matrix)
    area_im = cv2.warpPerspective(img, transfo_matrix, (target_w_area, target_h_area))
    return area_im

class PotentialMarker:
    def __init__(self, center, radius, cnt):
        self.center = center
        self.x = center[0]
        self.y = center[1]
        self.radius = radius
        self.contour = cnt
        self.is_merged = False

    def get_center(self):
        return self.center

    def __str__(self):
        return "{} - {} - {}".format(self.x, self.y, self.radius)

    def __repr__(self):
        return self.__str__()


class Marker:
    def __init__(self, potential_marker):
        self.list_centers = [potential_marker.get_center()]
        self.list_radius = [potential_marker.radius]
        self.list_contours = [potential_marker.contour]
        self.cx = self.list_centers[0][0]
        self.cy = self.list_centers[0][1]
        self.radius = potential_marker.radius
        self.identifiant = None
        self.value_for_id = None

    def get_radius(self):
        return self.radius

    def get_center(self):
        return self.cx, self.cy

    def add_circle(self, obj_potential_marker):
        self.list_centers.append(obj_potential_marker.get_center())
        self.list_radius.append(obj_potential_marker.radius)
        obj_potential_marker.is_merged = True

        (x, y) = np.mean(self.list_centers, axis=0)
        self.cx, self.cy = int(round(x)), int(round(y))

        self.radius = int(round(max(self.list_radius)))

    def nb_circles(self):
        return len(self.list_centers)

    def get_id_from_slice(self, img_thresh):
        x, y, w, h = self.cx - 1, self.cy - 1, 3, 3
        self.value_for_id = np.mean(img_thresh[y:y + h, x:x + w])
        # return value_for_id
        if self.value_for_id > 200:
            self.identifiant = "A"
        else:
            self.identifiant = "B"

        return self.identifiant
        # return value_for_id

    def __str__(self):
        return "{} - {}".format(self.nb_circles(), self.list_centers)

    def __repr__(self):
        return self.__str__()

def euclidean_dist_2_pts(p1, p2):
    """
    Return euclidean distance between 2 points
    :param p1: tuple(X,Y) of the first point's coordinates
    :param p2: tuple(X,Y) of the second point's coordinates
    :return: distance in the same metrics as the points
    """
    x1, y1 = p1
    x2, y2 = p2
    return math.sqrt((float(x1) - float(x2)) ** 2 + (float(y1) - float(y2)) ** 2)



if __name__ == '__main__':
    # Start the depth_img subscriber
    start_subscriber()
    # Connect to robot
    robot = NiryoRobot(robot_ip_address)
    # Changing tool
    robot.update_tool()
    # Calibrate robot if robot needs calibration
    robot.calibrate_auto()
    # Launching main process
    process(robot)
    # Ending
    robot.go_to_sleep()
    # Releasing connection
    robot.close_connection()
