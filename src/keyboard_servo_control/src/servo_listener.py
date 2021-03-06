#!/usr/bin/env python3
import rospy
from servo_control.msg import Servo, CommandDrive
from geometry_msgs.msg import Twist
import hardware_setup as hardware

class ServoListener(object):
    def __init__(self):
        rospy.loginfo("Initializing servos")

        # Initialize attributes
        self.left_servo = hardware.setup_servo()
        self.stop_servo()
        self.callback = False

    def stop_servo(self):
        hardware.stop_servo(self.left_servo)

    # Start the servo
    def drive_callback(self, cmd):
        if cmd.linear.x:
            position = 2.5
        elif cmd.angular.z:
            position = 12.5
        
        rospy.loginfo("Got a command: p = %f", position)
        self.callback = True
        hardware.move_servo(self.left_servo, position)

    def make_servo_nuetral(self):
        hardware.move_servo(self.left_servo, 7.5)

    # Infinite while loop
    def run(self):
        rate = rospy.Rate(10)

        while not rospy.is_shutdown():
            rospy.Subscriber("/cmd_vel", Twist, self.drive_callback, queue_size = 1)
            if self.callback:
                self.callback = False
            else:
                self.make_servo_nuetral()
            rate.sleep()

if __name__ == "__main__":
    rospy.init_node("Servo Wrapper", log_level=rospy.INFO)
    rospy.loginfo("Starting the servo wrapper node")

    wrapper = ServoListener()
    rospy.on_shutdown(wrapper.stop_servo)
    wrapper.run()