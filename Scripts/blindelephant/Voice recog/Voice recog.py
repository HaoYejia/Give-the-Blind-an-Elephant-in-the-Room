from aip import AipSpeech
import speech_recognition as sr
import pyttsx3
import rospy
from std_msgs.msg import Empty 
from std_msgs.msg import String


class voice():
    def __init__(self):
        rospy.init_node('voice_recongnition')
        self.pub = rospy.Publisher('/voice', Empty, queue_size=10)
        self.pub2 = rospy.Publisher('/txt',String, queue_size=10)
        self.sub = rospy.Subscriber('/second_time', Empty, self.callBack)
        self.msg = Empty()
        self.msg = True
        if self.get_text():
            self.pub.publish(self.msg)
            
        print("OK")

    def get_text(self):
        APP_ID = '15311704'
        API_KEY = 'yTzBl40WBlhFOo1GnKk0YQTN'
        SECRET_KEY = 'xpWedO1u0ZLATHijhetFo7dE5ibMsI6Q'
        client = AipSpeech(APP_ID, API_KEY, SECRET_KEY)
        r = sr.Recognizer()
        mic = sr.Microphone()
        with mic as source:
            r.adjust_for_ambient_noise(source)
            audio = r.listen(source)
            audio_data = audio.get_wav_data(convert_rate=16000)
            engine = pyttsx3.init()
            engine.say('Please begin speaking')
            engine.runAndWait()
            result = client.asr(audio_data, 'wav', 16000, {'dev_pid': 1536, })
            try:
                text = result['result'][0]
            except Exception as e:
                engine = pyttsx3.init()
                engine.say('Failedf')
                engine.runAndWait()

                text = "Failed"
        return text


    def callBack(self, msg):
        txt = String()
        txt.String = get_text()
        self.pub2(txt)


if __name__ == '__main__':
    whatever = voice()

