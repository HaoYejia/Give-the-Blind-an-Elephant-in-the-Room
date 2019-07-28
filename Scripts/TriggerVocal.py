import rospy
from sensor_msgs.msg import Joy

class TriggerVocal():
    def vocalrecog(self,msg):
        buttonA = 0
        buttonB = 1
        buttonX = 2
        buttonY = 3

        button_state = msg.buttons[buttonA]
        if button_state > 0:
            print('Pressed')
        else:
            print('noPressed')


    def __init__(self):
        rospy.init_node('Vocaltrigger',anonymous=False)
        rate = rospy.Rate(10)
        self.joystick = rospy.Subscriber('joy',Joy, self.vocalrecog)
        rospy.spin()
if __name__ == '__main__':
    whatever = TriggerVocal()