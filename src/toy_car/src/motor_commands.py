#!/usr/bin/env python3
import rospy
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)

def setup_motor_controller():
    global motor_controller_mapping, motors, motor_pwm
    motor_controller_mapping = rospy.get_param('~motor_mapping')
    motors = {}
    motor_pwm = []
    counter = 0

    for motor_name, properties in motor_controller_mapping.items():
        motors[counter] = [properties["in1"], properties["in2"], properties["en"]]
        counter += 1

    for i in range(len(motors)):
        GPIO.setup(motors[i][0], GPIO.OUT)
        GPIO.setup(motors[i][1], GPIO.OUT)
        GPIO.setup(motors[i][2], GPIO.OUT)
        GPIO.setup(motors[i][0], GPIO.LOW)
        GPIO.setup(motors[i][1], GPIO.LOW)
        motor_pwm.append(GPIO.PWM(motors[i][2], 1000))
        motor_pwm[i].start(25)

def move_forwards():
    rospy.loginfo("Moving Forward...")
    for i in range(len(motors)):
        motor_pwm[i].ChangeDutyCycle(12)
        GPIO.output(motors[i][0], GPIO.LOW)
        GPIO.output(motors[i][1], GPIO.HIGH)

def turn_left():
    rospy.loginfo("Turning Left...")
    motor_pwm[0].ChangeDutyCycle(15)
    motor_pwm[1].ChangeDutyCycle(20)

def turn_right():
    rospy.loginfo("Turning Right...")
    motor_pwm[0].ChangeDutyCycle(20)
    motor_pwm[1].ChangeDutyCycle(15)

def move_backwards():
    rospy.loginfo("Moving Backward...")
    for i in range(len(motors)):
        motor_pwm[i].ChangeDutyCycle(12)
        GPIO.output(motors[i][0], GPIO.LOW)
        GPIO.output(motors[i][1], GPIO.HIGH)

def stop_motors():
    rospy.loginfo("Stopping Motors...")
    for i in range(len(motors)):
        motor_pwm[i].ChangeDutyCycle(12)
        GPIO.output(motors[i][0], GPIO.LOW)
        GPIO.output(motors[i][0], GPIO.LOW)