#!/usr/bin/python
# -*- coding: UTF-8 -*-



import speech_recognition as sr
import wave
import pyaudio

class SpeechCon():

    # 录音并写入文件
    def record_wave(self):
        p = pyaudio.PyAudio()

        stream = p.open(format=self.FORMAT,
                        channels=self.CHANNELS,
                        rate=self.RATE,
                        input=True,
                        frames_per_buffer=self.CHUNK)

        frames = []

        for i in range(0, int(self.RATE / self.CHUNK * self.RECORD_SECONDS)):
            data = stream.read(self.CHUNK)
            frames.append(data)

        stream.stop_stream()
        stream.close()
        p.terminate()

        wf = wave.open(self.WAVE_OUTPUT_FILENAME, 'wb')
        wf.setnchannels(self.CHANNELS)
        wf.setsampwidth(p.get_sample_size(self.FORMAT))
        wf.setframerate(self.RATE)
        wf.writeframes(b''.join(frames))
        wf.close()


    def speech2text(self):
        r = sr.Recognizer()
        speech = sr.AudioFile('output.wav')
        with speech as source:
            audio = r.record(source)
            text = r.recognize_google(audio, language='zh-CN')
            # return text
    def action(self):
        self.record_wave()
        txt = self.speech2text()
        # print(txt)
        return txt
    def __init__(self):
        self.CHUNK = 1024
        self.FORMAT = pyaudio.paInt16
        self.CHANNELS = 2
        self.RATE = 8000
        self.RECORD_SECONDS = 5
        self.WAVE_OUTPUT_FILENAME = "output.wav"

        self.action()

if __name__ == '__main__':
    whatever = SpeechCon()



