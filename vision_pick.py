from pyniryo import *
import sys

# -- MUST Change these variables
tool_used = ToolID.GRIPPER_1
simulation_mode = True
if simulation_mode:
    robot_ip_address, workspace_name = "127.0.0.1", "gazebo_1"
else:
    robot_ip_address, workspace_name = "10.10.10.10", "workspace_1"

# -- Can Change these variables
grid_dimension = (3, 3)  # conditioning grid dimension
vision_process_on_robot = False  # boolean to indicate if the image processing append on the Robot
display_stream = True  # Only used if vision on computer

# -- Should Change these variables
# The pose from where the image processing happens
observation_pose = PoseObject(
    x=0.17, y=0., z=0.35,
    roll=-0.0, pitch=1.7, yaw=-0.0,
)

# Center of the conditioning area
center_conditioning_pose = PoseObject(
    x=0.0, y=-0.25, z=0.11,
    roll=-0.0, pitch=1.57, yaw=-1.57
)


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

    color = "BLUE"
    if len(sys.argv) > 1: color = sys.argv[1]
    if color not in ["RED", "BLUE", "GREEN"] :
        print("Try again with a different Color: RED, BLUE or GREEN")
        sys.exit()
    count_other = 0
    other = False
  
    # Loop
    while try_without_success < 5:
        # Moving to observation pose
        niryo_robot.move_pose(observation_pose)
        niryo_robot.wait(2)
        img_compressed = niryo_robot.get_img_compressed()
        img = uncompress_image(img_compressed)
        img = undistort_image(img, mtx, dist)
        # extracting working area
        im_work = extract_img_workspace(img, workspace_ratio=1.0)
        if im_work is None:
            print("Unable to find markers")
            try_without_success += 1
            if display_stream:
                cv2.imshow("Last image saw", img)
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
            show_img("Last image saw", img, wait_ms=100)
            show_img("Image thresh", img_thresh, wait_ms=100)
        # Getting biggest contour/blob from threshold image
        contour = biggest_contour_finder(img_thresh)
        if contour is None or len(contour) == 0:
            obj_found = False
        else:
            img_thresh_rgb_w_contour = draw_contours(img_thresh, [contour])

            # Getting contour/blob center and angle
            cx, cy = get_contour_barycenter(contour)
            img_thresh_rgb_w_contour = draw_barycenter(img_thresh_rgb_w_contour, cx, cy)
            cx_rel, cy_rel = relative_pos_from_pixels(im_work, cx, cy)

            angle = get_contour_angle(contour)
            img_thresh_rgb_w_contour = draw_angle(img_thresh_rgb_w_contour, cx, cy, angle)

            show_img("Image thresh", img_thresh_rgb_w_contour, wait_ms=30)

            # Getting object world pose from relative pose
            obj_pose = niryo_robot.get_target_pose_from_rel(workspace_name,
                                                            height_offset=0.0,
                                                            x_rel=cx_rel, y_rel=cy_rel,
                                                            yaw_rel=angle)
            obj_found = True
        if not obj_found:
            color_hsv_setting = ColorHSV.ANY.value
            img_thresh = threshold_hsv(im_work, *color_hsv_setting)
            if display_stream:
                show_img("Last image saw", img, wait_ms=100)
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
                                                            height_offset=0.0,
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


if __name__ == '__main__':
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
