#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
import motor_commands as motors

class MotorListener(object):
    def __init__(self):
        rospy.loginfo("Initializing servos")

        # Initialize attributes
        self.hardware = motors
        self.hardware.setup_motor_controller()
        self.stop_motors()

    def stop_motors(self):
        motors.stop_motors()

    # Start the servo
    def drive_callback(self, cmd):
        if cmd.linear.x == 0.5 and cmd.angular.z == 0:
            self.hardware.move_forwards()
        elif cmd.angular.z == 1.0 and cmd.linear.x == 0:
            self.hardware.turn_left()
        elif cmd.angular.z == -1.0 and cmd.linear.x == 0:
            self.hardware.turn_right()
        elif cmd.linear.x == -0.5 and cmd.angular.z == -1.0:
            self.hardware.move_backwards()
        else:
            self.hardware.stop_motors()
        
        rospy.loginfo("\tFrom teleop Twist: linear.x = %f", cmd.linear.x)
        rospy.loginfo("\tFrom teleop Twist: angular.z = %f", cmd.angular.z)

    # Infinite while loop
    def run(self):
        rate = rospy.Rate(10)

        while not rospy.is_shutdown():
            rospy.Subscriber("/cmd_vel", Twist, self.drive_callback, queue_size = 1)
            
            rate.sleep()

if __name__ == "__main__":
    rospy.init_node("Motor Wrapper", log_level=rospy.INFO)
    rospy.loginfo("Starting the servo wrapper node")

    wrapper = MotorListener()
    rospy.on_shutdown(wrapper.stop_motors)
    wrapper.run()