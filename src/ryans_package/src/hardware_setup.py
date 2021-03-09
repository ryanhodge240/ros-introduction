#!/usr/bin/env python3
import rospy
import RPi.GPIO as GPIO
from ryans_package.msg import CommandDrive, Servo

GPIO.setmode(GPIO.BOARD)

class Hardware(object):
    def __init__(self):
        self.servo_mapping = rospy.get_param('~servo_mapping')
        self.servo = None

    def setup_servo(self):
        properties = self.servo_mapping["left_motor"]
        address = properties["address"]
        Hz = properties["Hz"]
        GPIO.setup(address, GPIO.OUT)
        self.servo = GPIO.PWM(address, Hz)
        self.servo.start(2.5)
        return self.servo

    def stop_servo(self):
        self.servo.ChangeDutyCycle(0)

    def move_servo(self, position):
        self.servo.ChangeDutyCycle(position)