#!/usr/bin/env python3
import rospy
from ryans_package.msg import CommandDrive
import hardware_setup as hardware

class ButtonTalker(object):
    def __init__(self):
        rospy.loginfo("Initializing sensors")

        # Initialize attributes
        # Returns the address of the button
        self.button_address = hardware.setup_button()

        # Set up publisher
        self.button_pub = rospy.Publisher("/cmd_drive", CommandDrive, queue_size = 1)

    def run(self):
        rate = rospy.Rate(10)

        while not rospy.is_shutdown():
            button_state = hardware.get_button_state(self.button_address)

            if not button_state:
                self.publish_button_state(3)
                button_state = False
            else:
                self.publish_button_state(12.5)

            rate.sleep()

    def publish_button_state(self, position):
        rospy.loginfo("The position: %d", position)
        button = CommandDrive()
        button.left_front_vel = position
        self.button_pub.publish(button)

if __name__ == "__main__":
    rospy.init_node("Button Wrapper", log_level=rospy.INFO)
    rospy.loginfo("Starting the button wrapper node")

    wrapper = ButtonTalker()
    wrapper.run()
