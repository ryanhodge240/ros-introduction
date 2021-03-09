#!/usr/bin/env python3
import rospy
import RPi.GPIO as GPIO
from ryans_package.msg import Servo, CommandDrive

GPIO.setmode(GPIO.BOARD)

class ServoListener(object):
    def test(self):
        rospy.loginfo("Initializing servos")

        # Initialize attributes
        self.drive_cmd_buffer = None
        self.left_servo = None
        self.servo_mapping = rospy.get_param('~servo_mapping')
        self.setup_servo()

    # Setup all of the servos or motors using their parameters
    def setup_servo(self):
        properties = self.servo_mapping["left_motor"]
        address = properties["address"]
        Hz = properties["Hz"]
        GPIO.setup(address, GPIO.OUT)
        self.left_servo = GPIO.PWM(address, Hz)
        self.left_servo.start(2.5)

    # Stop the servos from moving
    def stop_servo(self):
        self.left_servo.stop()

    def drive_cmd_cb(self, cmd):
        """
        Takes the drive command and stores it in the buffer to be sent
        on the next iteration of the run() loop.
        """
        rospy.loginfo("Drive command callback received")
        self.left_servo.ChangeDutyCycle(cmd.left_front_vel)

    def run(self):
        rate = rospy.Rate(10)

        while not rospy.is_shutdown():
            rospy.Subscriber("/cmd_drive", CommandDrive, self.drive_cmd_cb, queue_size = 1)
            rate.sleep()

    def listener(self):
        rospy.loginfo("Initializing servos")

        # Initialize attributes
        self.drive_cmd_buffer = None
        self.left_servo = None
        self.servo_mapping = rospy.get_param('~servo_mapping')
        self.setup_servo()
        rate = rospy.Rate(10)

        while not rospy.is_shutdown():
            rospy.Subscriber("/cmd_drive", CommandDrive, self.drive_cmd_cb, queue_size = 1)
            rate.sleep()

if __name__ == "__main__":
    rospy.init_node("Servo Wrapper", log_level=rospy.INFO)
    rospy.loginfo("Starting the servo wrapper node")

    wrapper = ServoListener()
    rospy.on_shutdown(wrapper.stop_servo)
    wrapper.listener()
