#!/usr/bin/env python3
import rospy
import RPi.GPIO as GPIO
from ryans_package.msg import CommandDrive

GPIO.setmode(GPIO.BOARD)

class ButtonTalker(object):
    def __init__(self):
        rospy.loginfo("Initializing sensors")

        # Initialize attributes
        self.left_servo = None
        self.button_address = None
        self.servo_mapping = rospy.get_param('~servo_mapping')
        self.sensor_mapping = rospy.get_param('~sensor_mapping')
        self.setup_sensors()

        # Set up publishers and subscribers
        self.button_pub = rospy.Publisher("/cmd_drive", CommandDrive, queue_size = 1)

    def setup_sensors(self):
        properties = self.sensor_mapping["button"]
        self.button_address = properties["address"]
        GPIO.setup(self.button_address, GPIO.IN, pull_up_down = GPIO.PUD_UP)

    def run(self):
        rate = rospy.Rate(10)

        while not rospy.is_shutdown():
            button_state = GPIO.input(self.button_address)

            if not button_state:
                self.publish_button_state(5.0)
                button_state = False
            else:
                self.publish_button_state(12.5)

            rate.sleep()

    def publish_button_state(self, velocity):
        button = CommandDrive()
        button.left_front_vel = velocity
        self.button_pub.publish(button)

if __name__ == "__main__":
    rospy.init_node("Button Wrapper", log_level=rospy.INFO)
    rospy.loginfo("Starting the button wrapper node")

    wrapper = ButtonTalker()
    wrapper.run()
