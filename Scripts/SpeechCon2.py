#!/usr/bin/python3
# -*- coding: UTF-8 -*-

import speech_recognition as sr
import wave
import pyaudio
import webbrowser

CHUNK = 1024
FORMAT = pyaudio.paInt16
CHANNELS = 2
RATE = 8000
RECORD_SECONDS = 5
WAVE_OUTPUT_FILENAME = "output.wav"

class SpeechCon():

    # 录音并写入文件
    def record_wave(self):
        p = pyaudio.PyAudio()

        stream = p.open(format=FORMAT,
                        channels=CHANNELS,
                        rate=RATE,
                        input=True,
                        frames_per_buffer=CHUNK)

        print("* recording")

        frames = []

        for i in range(0, int(RATE / CHUNK * RECORD_SECONDS)):
            data = stream.read(CHUNK)
            frames.append(data)

        print("* done recording")

        stream.stop_stream()
        stream.close()
        p.terminate()

        wf = wave.open(WAVE_OUTPUT_FILENAME, 'wb')
        wf.setnchannels(CHANNELS)
        wf.setsampwidth(p.get_sample_size(FORMAT))
        wf.setframerate(RATE)
        wf.writeframes(b''.join(frames))
        wf.close()


    r = sr.Recognizer()


    def speech2text(self):
        speech = sr.AudioFile('output.wav')
        print(1)
        with speech as source:
            audio = r.record(source)
            text = r.recognize_google(audio, language='zh-cmn-Hans')
            print(text)
            return text


    def text2cmd(self):
        if '谷歌' in speech2text():
            webbrowser.open('http://www.google.com')
        if '百度' in speech2text() :
            webbrowser.open('http://www.google.com')

    def __init__(__self__):
        self.

if __name__ == '__main__':
    whatever = SpeechCon()
