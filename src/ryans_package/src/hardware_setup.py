#!/usr/bin/env python3
import rospy
import RPi.GPIO as GPIO
from ryans_package.msg import CommandDrive, Servo

GPIO.setmode(GPIO.BOARD)

def setup_servo():
    servo_mapping = rospy.get_param('~servo_mapping')
    properties = servo_mapping["left_motor"]
    address = properties["address"]
    Hz = properties["Hz"]
    GPIO.setup(address, GPIO.OUT)
    servo = GPIO.PWM(address, Hz)
    servo.start(2.5)
    return servo

def stop_servo(servo):
    servo.ChangeDutyCycle(0)

def move_servo(servo, position):
    servo.ChangeDutyCycle(position)