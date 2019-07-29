#!/usr/bin/python
# -*- coding: UTF-8 -*-

import RPi.GPIO as GPIO
import math

def motorMap(direction):
    motorpin_ft =  1 #Front
    motorpin_ftl = 2 #frontleft
    motorpin_ftr = 3 #frontright
    motorpin_l = 4 #left
    motorpin_r = 5 #right
    motorpin_bk = 6 #back
    motorpin_bkl = 7 #backleft
    motorpin_bkr = 8 #backright

    GPIO.setmode(GPIO.BCM)

    GPIO.setup(motorpin_ft, GPIO.OUT, initial=GPIO.LOW)
    GPIO.setup(motorpin_ftl, GPIO.OUT, initial=GPIO.LOW)
    GPIO.setup(motorpin_ftr, GPIO.OUT, initial=GPIO.LOW)
    GPIO.setup(motorpin_l, GPIO.OUT, initial=GPIO.LOW)
    GPIO.setup(motorpin_r, GPIO.OUT, initial=GPIO.LOW)
    GPIO.setup(motorpin_bk, GPIO.OUT, initial=GPIO.LOW)
    GPIO.setup(motorpin_bkl, GPIO.OUT, initial=GPIO.LOW)
    GPIO.setup(motorpin_bkr, GPIO.OUT, initial=GPIO.LOW)

    for i in range(0,360):
        if i in direction:
            if direciton[i] < 45 or direction[i] >= 315: #Front
                GPIO.output(motorpin_ft,HIGH)
                GPIO.output(motorpin_ftl,HIGH)
                GPIO.output(motorpin_ftr,HIGH)
            elif direction[i] >= 45 and direction[i] < 135: #Right
                GPIO.output(motorpin_r,HIGH)
                GPIO.output(motorpin_ftl,HIGH)
                GPIO.output(motorpin_ftr,HIGH)
            elif direction[i] >=135 and direction[i] < 225: #Back
                GPIO.output(motorpin_bk,HIGH)
                GPIO.output(motorpin_bkl,HIGH)
                GPIO.output(motorpin_bkr,HIGH)
            elif direction[i] >= 225 and direction[i] <315: #Left
                GPIO.output(motorpin_r,HIGH)
                GPIO.output(motorpin_ftl,HIGH)
                GPIO.output(motorpin_ftr,HIGH)
            else:
                print("err")

        
    time.sleep(0.5)

            




# if __name__ == "__main__":
    # motorMap()
