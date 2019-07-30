import rospy
from std_msgs.msg import String
import real_time_object_detection
import pyttsx3


class CamSpeaker():
    def action(self):

        self.pubmsg.string = self.obj
        self.pub.Publish(self.pubmsg)

    def __init__(self):
        self.obj = real_time_object_detection.camera_detect()
        rospy.init_node('CamSpeaker')
        self.pub = rospy.Publisher('/cam_speak', String, queue_size=10)
        self.pubmsg = String()
        self.action()


if __name__ == '__main__':
    whatever = CamSpeaker()