from pyniryo import *
from sensor_msgs.msg import CompressedImage
#from cv_bridge import CvBridge
import cv2
import rospy
import time
import numpy as np

robot_ip_address, workspace_name = "127.0.0.1", "gazebo_1"
latest_color_image = None

#observation_pose = PoseObject(
#    x=0.21, y=-0.012, z=0.22,
#    roll=0, pitch=1.87, yaw=0.15,
#)
observation_pose = PoseObject(
    x=0.21, y=-0.0, z=0.22,
    roll=0, pitch=1.85, yaw=0.0,
)

def color_img_callback(msg):
    global latest_color_image
    rospy.logdebug("Received compressed image message.") # Debug-Ausgabe
    try:
        # Daten aus der Nachricht in ein NumPy Array umwandeln
        np_arr = np.frombuffer(msg.data, np.uint8)
        # Bild mit cv2.imdecode dekodieren (im Farbmodus)
        decoded_image = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)
        
        if decoded_image is None:
             rospy.logwarn("cv2.imdecode returned None. Check image data/format.")
             latest_color_image = None
        else:
             latest_color_image = decoded_image
             rospy.logdebug("Image successfully decoded.") # Debug-Ausgabe

    except Exception as e:
        rospy.logerr("Error decoding compressed image: %s", e)
        latest_color_image = None # Sicherstellen, dass bei Fehler None gesetzt wird

def start_subscriber():
    try:
        # Init Node nur einmal aufrufen
        rospy.init_node('color_image_subscriber', anonymous=True)
    except rospy.exceptions.ROSException:
        # Falls der Node schon initialisiert ist (z.B. bei mehrfachen Laeufen)
        pass 
        
    # Mit dem korrekten Nachrichtentyp abonnieren
    rospy.Subscriber("/camera/color/image_raw/compressed", CompressedImage, color_img_callback)
    rospy.loginfo("Subscribed to /camera/color/image_raw/compressed")

def process(niryo_robot):
    rospy.loginfo("Waiting for first image message...")
    start_time = rospy.get_time()
    timeout_seconds = 10.0 # Maximal 10 Sekunden warten

    while latest_color_image is None and not rospy.is_shutdown():
        # Pruefen, ob Timeout erreicht wurde
        if rospy.get_time() - start_time > timeout_seconds:
            rospy.logerr("Timeout: Kein Bild innerhalb von %.1f Sekunden empfangen.", timeout_seconds)
            return # Funktion beenden, wenn kein Bild kommt

        # Kurze Pause, damit andere Threads (Callback) laufen koennen
        try:
            rospy.sleep(0.1) 
        except rospy.ROSInterruptException:
             rospy.loginfo("ROS shutdown request received while waiting for image.")
             return

    # Wenn die Schleife beendet wurde (und kein Timeout), sollte ein Bild da sein
    if latest_color_image is not None:
        rospy.loginfo("Image received. Displaying...")
        try:
            cv2.imshow("Last image", latest_color_image)
            rospy.loginfo("Press any key in the image window to close it.")
            # Warte unbegrenzt auf Tastendruck im Bildfenster
            cv2.waitKey(0) 
            # Schliesse das Fenster danach
            cv2.destroyAllWindows() 
        except Exception as e:
             rospy.logerr("Error displaying image with cv2: %s", e)
             # Hier koennte der gleiche cv2.error auftreten, wenn das Bild trotz allem ungueltig ist
             # z.B. wenn imdecode fehlgeschlagen ist und None zurueckgab
             if latest_color_image is not None:
                  rospy.logerr("Image shape: %s, dtype: %s", latest_color_image.shape, latest_color_image.dtype)

    else:
        rospy.logerr("Cannot display image because none was received or it was invalid after decoding.")


if __name__ == '__main__':
    start_subscriber()
    
    # Mit Roboter verbinden etc.
    try:
        robot = NiryoRobot(robot_ip_address)
        robot.update_tool()
        robot.calibrate_auto()
        
        # Hauptprozess starten
        process(robot)
        
        # Verbindung trennen
        robot.close_connection()
        
    except NiryoRobotException as e:
        rospy.logerr("Niryo Robot Exception: %s", e)
    except Exception as e:
        rospy.logerr("An unexpected error occurred: %s", e)
        import traceback
        traceback.print_exc() # Gibt den vollen Traceback aus
    finally:
        # Sicherstellen, dass OpenCV Fenster geschlossen werden, falls noch offen
        cv2.destroyAllWindows() 
        rospy.loginfo("Script finished.")