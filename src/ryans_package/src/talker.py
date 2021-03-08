#!/usr/bin/env python
# license removed for brevity
import rospy
from ryans_package.msg import Servo

def talker():
    pub = rospy.Publisher('custom_chatter', Servo, queue_size=10)
    rospy.init_node('custom_talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    msg = Servo()
    msg.velocity = 4
    
    while not rospy.is_shutdown():
        rospy.loginfo(msg)
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass