#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
import motor_commands as motors

class ServoListener(object):
    def __init__(self):
        rospy.loginfo("Initializing servos")

        # Initialize attributes
        self.left_servo = motors.setup_motor_controller()
        self.stop_servo()

    def stop_servo():
        motors.stop_motors()

    # Start the servo
    def drive_callback(self, cmd):
        if cmd.linear.x:
            position = 2.5
        elif cmd.angular.z:
            position = 12.5
        
        rospy.loginfo("Got a command: p = %f", position)
        hardware.move_servo(self.left_servo, position)

    # Infinite while loop
    def run(self):
        rate = rospy.Rate(10)

        while not rospy.is_shutdown():
            rospy.Subscriber("/cmd_vel", Twist, self.drive_callback, queue_size = 1)
            
            rate.sleep()

if __name__ == "__main__":
    rospy.init_node("Servo Wrapper", log_level=rospy.INFO)
    rospy.loginfo("Starting the servo wrapper node")

    wrapper = ServoListener()
    rospy.on_shutdown(wrapper.stop_servo)
    wrapper.run()