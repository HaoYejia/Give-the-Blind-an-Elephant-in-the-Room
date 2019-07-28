import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
from 

class ObstacleDetect():
    def viberate(self,motornum): #viberate which motor
        
    
    def map_vib_abs(self,direction): #absolute mapping, or viberate only one motor 
        motor_num = 4
        map_range = 360/motor_num #The estimate mapping range 
        

    def control(self,msg):
        for i in range(1,360):
            if msg.ranges[i]< self.obs_distance_lim: #Detect an obstacle that is too close
                print('too close at direction %d' %(i))
                self.map_vib_abs(i) #Mapping the direction to the viberation
            elif msg.ranges[i] < msg.range_min:
                print('err at direction %d' %(i))
                self.pubmsg.linear.x = 1500
                self.pubmsg.angular.y = 90
            elif msg.ranges[i] == ' inf':
                print('err at direction %d' %(i))
            else:
                print('fine at direction %d' %(i))


    def __init__(self):
        self.obs_distance_lim = 0.3 #The limit of the obstacle that trigger the alert
        rospy.init_node('ObsDetect', anonymous=False)
        rate = rospy.Rate(100)
        self.pub = rospy.Publisher('car/cmd_vel',Twist, queue_size=10)
        self.pubmsg = Twist()
        self.obs = rospy.Subscriber('scan',LaserScan, self.control)
        rospy.spin()


if __name__ == '__main__':
    whatever = ObstacleDetect()