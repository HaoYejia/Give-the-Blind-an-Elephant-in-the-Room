# encode = utf-8

import pyttsx3
import rospy
from std_msgs.msg import String

class TTS():

    def audio_output(self,msg):
        engine = pyttsx3.init()
        engine.say(msg.string)
        engine.runAndWait()

    def __init__(self):
        rospy.init_node('TTS',anonymous=False)
        self.set = rospy.Subscriber('cam_speak',Stirng, self.audio_output)
        self.set2 = rsopy.SUbscriber()

if __name__ == '__main__':
    whatever = TTS()