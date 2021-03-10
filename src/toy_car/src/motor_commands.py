#!/usr/bin/env python3
import rospy
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)

motor_controller_mapping = rospy.get_param('~motor_mapping')
motors = {}
motor_pwm = []
counter = 0
for motor_name, properties in motor_controller_mapping.iteritems():
    motors[counter] = [properties["in1"], properties["in2"], properties["en"]]
    counter += 1

def setup_motor_controller():
    for i in range(len(motors)):
        GPIO.setup(motors[i]["in1"], GPIO.OUT)
        GPIO.setup(motors[i]["in2"], GPIO.OUT)
        GPIO.setup(motors[i]["en"], GPIO.OUT)
        GPIO.setup(motors[i]["in1"], GPIO.LOW)
        GPIO.setup(motors[i]["in2"], GPIO.LOW)
        motor_pwm = GPIO.PWM(motors[i]["en"], 1000)
        motor_pwm.start(25)

def set_pwm_equal():
    motor_pwm[0].ChangeDutyCycle(50)
    motor_pwm[1].ChangeDutyCycle(50)

def move_forward():
    for i in range(len(motors)):
        set_pwm_equal()
        GPIO.output(motors[i]["in1"], GPIO.HIGH)
        GPIO.output(motors[i]["in1"], GPIO.LOW)

def turn_left():
    motor_pwm[0].ChangeDutyCycle(25)
    motor_pwm[1].ChangeDutyCycle(75)

def turn_right():
    motor_pwm[0].ChangeDutyCycle(75)
    motor_pwm[1].ChangeDutyCycle(25)

def move_backwards():
    for i in range(len(motors)):
        set_pwm_equal()
        GPIO.output(motors[i]["in1"], GPIO.LOW)
        GPIO.output(motors[i]["in1"], GPIO.HIGH)

def stop_motors():
    for i in range(len(motors)):
        set_pwm_equal()
        GPIO.output(motors[i]["in1"], GPIO.LOW)
        GPIO.output(motors[i]["in1"], GPIO.LOW)