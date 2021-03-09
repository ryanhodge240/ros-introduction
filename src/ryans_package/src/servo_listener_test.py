#!/usr/bin/env python3
import rospy
import RPi.GPIO as GPIO
from ryans_package.msg import Servo, CommandDrive
import hardware_setup

GPIO.setmode(GPIO.BOARD)

class ServoListener(object):
    def __init__(self):
        rospy.loginfo("Initializing servos")

        # Initialize attributes
        self.hardware = hardware_setup()
        self.drive_cmd_buffer = None
        self.left_servo = None
        self.servo_mapping = rospy.get_param('~servo_mapping')
        self.left_servo = self.hardware.setup_servo()
        self.hardware.stop_servo(self.left_servo)

    # Start the servo
    def drive_cmd_cb(self, cmd):
        self.hardware.move_servo(cmd.left_front_vel)

    # Infinite while loop
    def run(self):
        rate = rospy.Rate(10)

        while not rospy.is_shutdown():
            rospy.Subscriber("/cmd_drive", CommandDrive, self.drive_cmd_cb, queue_size = 1)
            rate.sleep()

if __name__ == "__main__":
    rospy.init_node("Servo Wrapper", log_level=rospy.INFO)
    rospy.loginfo("Starting the servo wrapper node")

    wrapper = ServoListener()
    rospy.on_shutdown(wrapper.stop_servo)
    wrapper.run()