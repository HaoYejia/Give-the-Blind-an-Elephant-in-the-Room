#!/usr/bin/python
# -*- coding: UTF-8 -*-

import rospy
from sensor_msgs.msg import Joy
import speech_recognition as sr
import wave
import pyaudio
import webbrowser
from SpeechCon2 import SpeechCon

CHUNK = 1024
FORMAT = pyaudio.paInt16
CHANNELS = 2
RATE = 8000
RECORD_SECONDS = 5
WAVE_OUTPUT_FILENAME = "output.wav"

class TriggerVocal():
    def vocalrecog(self,msg):
        buttonA = 0
        buttonB = 1
        buttonX = 2
        buttonY = 3

        button_state = msg.buttons[buttonA]
        if button_state > 0:    
            print('PressedA')
            SpeechCon.record_wave()
            txt = SpeechCon.speech2text()
            print (txt)

        else:
            print('noPressedA')


    def __init__(self):
        rospy.init_node('Vocaltrigger',anonymous=False)
        rate = rospy.Rate(10)
        self.joystick = rospy.Subscriber('joy',Joy, self.vocalrecog)
        rospy.spin()
        self.r = sr.Recognizer()
    
if __name__ == '__main__':
    whatever = TriggerVocal()