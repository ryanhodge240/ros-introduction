#!/usr/bin/env python3
import rospy
import RPi.GPIO as GPIO
from ryans_package.msg import Servo, CommandDrive

GPIO.setmode(GPIO.BOARD)

class ServoControl(object):
    def __init__(self):
        rospy.loginfo("Initializing servos")

        # Initialize attributes
        self.drive_cmd_cb = None
        self.drive_cmd_buffer = None
        self.left_servo = None
        self.button_address = None
        self.servo_mapping = rospy.get_param('~servo_mapping')
        self.sensor_mapping = rospy.get_param('~sensor_mapping')
        self.setup_sensors()
        self.setup_servo()
        self.stop_servo()  # don't move at start

        # Set up publishers and subscribers
        self.drive_cmd_sub = rospy.Subscriber("/cmd_drive", CommandDrive, self.drive_cmd_cb, queue_size = 1)
        self.button_pub = rospy.Publisher("/cmd_drive", CommandDrive, queue_size = 1)
        self.servo_pub = rospy.Publisher("/servo", Servo, queue_size = 1)

    # Setup all of the servos or motors using their parameters
    def setup_servo(self):
        properties = self.servo_mapping["left_motor"]
        address = properties["address"]
        Hz = properties["Hz"]
        GPIO.setup(address, GPIO.OUT)
        self.left_servo = GPIO.PWM(address, Hz)

    # Setup all the sensors
    def setup_sensors(self):
        properties = self.sensor_mapping["button"]
        self.button_address = properties["address"]
        GPIO.setup(self.button_address, GPIO.IN, pull_up_down = GPIO.PUD_DOWN)

    # Stop the servos from moving
    def stop_servo(self):
        self.left_servo.stop()

    def drive_cmd_cb(self, cmd):
        """
        Takes the drive command and stores it in the buffer to be sent
        on the next iteration of the run() loop.
        """
        rospy.logdebug("Drive command callback received: {}".format(cmd))
        self.drive_cmd_buffer = cmd

    def run(self):
        rate = rospy.Rate(10)
        counter = 0
        servo = Servo()

        while not rospy.is_shutdown():
            now = rospy.Time.now()

            # Check to see if there are commands in the buffer to send to the servo
            if self.drive_cmd_buffer:
                drive_fcn = self.send_drive_buffer_velocity
                drive_fcn(self.drive_cmd_buffer)
                self.drive_cmd_buffer = None

            GPIO.add_event_detect(self.button_address, GPIO.RISING, callback=self.publish_button_state)
            
            # Don't update the velocity and position of the motors every iteration
            if counter >= 5:
                servo.velocity = self.read_servo_velocity
                servo.position = self.read_servo_position
                counter = 0

            self.servo_pub.publish(servo)

            rate.sleep()

    def publish_button_state(self):
        button = CommandDrive()
        button.left_front_vel = 1
        self.button_pub.publish(button)

    # Send out the velocity (cmd) to the servo
    def send_drive_buffer_velocity(self, cmd):
        """
        Sends the drive command to the servo
        """
        props = self.servo_mapping["left_motor"]
        self.send_velocity_cmd(cmd.left_front_velocity)
    
    # Starts the servo and then publishes the servo speed
    def send_velocity_cmd(self, velocity):
        self.left_servo.start(velocity)

if __name__ == "__main__":
    # Lower case?
    rospy.init_node("Servo Wrapper", log_level=rospy.INFO)
    rospy.loginfo("Starting the servo wrapper node")

    wrapper = ServoControl()
    rospy.on_shutdown(wrapper.stop_servo)
    wrapper.run()
