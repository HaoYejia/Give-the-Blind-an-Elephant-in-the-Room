import rospy
from geometry_msgs.msg import Twist

class CmdVelDistribute():





    def __init__(self):
            rospy.init_node('CmdVelDistribute',anonymous=False)
            self.sub1 = rospy.Subscriber('joy',Joy, self.setGoal)
            self.sub2 = rospy.Subscriber()
            self.pub = rospy.Publisher('car/cmd_vel',Twist, queue_size=10)
            self.pubmsg = PoseStamped()
            rate = rospy.Rate(10)



if __name__ == "__main__":
    whatever = CmdVelDistribute