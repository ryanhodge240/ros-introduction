#!/usr/bin/env python3
import rospy
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)

def setup_servo():
    servo_mapping = rospy.get_param('~servo_mapping')
    properties = servo_mapping["left_motor"]
    address = properties["address"]
    Hz = properties["Hz"]
    GPIO.setup(address, GPIO.OUT)
    servo = GPIO.PWM(address, Hz)
    servo.start(2.5)
    return servo

def setup_button():
    sensor_mapping = rospy.get_param('~sensor_mapping')
    properties = sensor_mapping["button"]
    address = properties["address"]
    GPIO.setup(address, GPIO.IN, pull_up_down = GPIO.PUD_UP)
    return address

def stop_servo(servo):
    servo.ChangeDutyCycle(0)

def move_servo(servo, position):
    servo.ChangeDutyCycle(position)

def get_button_state(address):
    return GPIO.input(address)