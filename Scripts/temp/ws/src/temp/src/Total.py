from imageai.Detection import VideoObjectDetection
import os
import cv2
import numpy as np
import speech_recognition as sr
import wave
import pyaudio
import webbrowser


os.environ['TF_CPP_MIN_LOG_LEVEL'] = '2'
execution_path = os.getcwd()


cap = cv2.VideoCapture(1)
fourcc = cv2.VideoWriter_fourcc(*'XVID')
out = cv2.VideoWriter('video.avi', fourcc, 20.0, (640, 480))

while cap.isOpened():
    ret, frame = cap.read()
    if ret == True:

         #写入帧
        out.write(frame)
        cv2.imshow('frame', frame)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
    else:
        break

cap.release()
out.release()
cv2.destroyAllWindows()


detector = VideoObjectDetection()
detector.setModelTypeAsRetinaNet()
detector.setModelPath(os.path.join(execution_path , "resnet50_coco_best_v2.0.1.h5"))
detector.loadModel()

video_path = detector.detectObjectsFromVideo(input_file_path = os.path.join(execution_path,"video.avi"),
                                             output_file_path=os.path.join(execution_path, "camera_detected_video.avi"),
                                             frames_per_second=50, log_progress=True, minimum_percentage_probability=30)
print(video_path)
# above is  图像识别


CHUNK = 1024
FORMAT = pyaudio.paInt16
CHANNELS = 2
RATE = 8000
RECORD_SECONDS = 5
WAVE_OUTPUT_FILENAME = "output.wav"


 #录音并写入文件
def record_wave():
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


def speech2text():
    speech = sr.AudioFile('output.wav')
    with speech as source:
        audio = r.record(source)
        text = r.recognize_google(audio, language='zh-cmn-Hans')
        return text


def text2cmd():
    if '谷歌' in speech2text():
        webbrowser.open('http://www.google.com')
    if '百度' in speech2text() :
        webbrowser.open('http://www.google.com')


if __name__ == '__main__':

    record_wave()
    speech2text()
    text2cmd()
#above is 语音识别

