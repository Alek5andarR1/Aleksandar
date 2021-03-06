"""This is flask server for rgb ws2801 remote. Connection with pico via UART. Shut down bluetooth on pi zero for uart to work"""


from flask import Flask, render_template, request, jsonify, make_response
from flask_serial import Serial
import json, re, time


app = Flask(__name__)
app.config['SERIAL_TIMEOUT'] = 0.2
app.config['SERIAL_PORT'] = '/dev/serial0'
app.config['SERIAL_BAUDRATE'] = 9600
app.config['SERIAL_BYTESIZE'] = 8
app.config['SERIAL_PARITY'] = 'N'
app.config['SERIAL_STOPBITS'] = 1

ser = Serial(app)


@app.route('/')
def home():
   return render_template('/index.html')

@app.route("/data", methods=["POST"])
def data():

    req = request.get_json()

    

    print("req: ",req, " ::end req")
    
    dataRGB = req["rgb_array"][0]



    led1 =  re.findall(r'\b\d+\b', dataRGB[0])    
    led2 =  re.findall(r'\b\d+\b', dataRGB[1])
    led3 =  re.findall(r'\b\d+\b', dataRGB[2])  
    led4 =  re.findall(r'\b\d+\b', dataRGB[3])
    led5 =  re.findall(r'\b\d+\b', dataRGB[4])
    led6 =  re.findall(r'\b\d+\b', dataRGB[5])


    dataUart = led1 + led2 + led3 + led4 + led5 +led6
    print("DATAUART", dataUart)
    for i in range(len(dataUart)):
     if len(dataUart[i]) < 3:
        j = 0
        while j < (3 - len(dataUart[i])):
             dataUart[i] = "0" + dataUart[i]

             


    dataUart = str(dataUart)

    dataSend = dataUart.replace(',', '')
    dataSend = dataSend.replace(' ','')
    dataSend = dataSend.replace('[','')
    dataSend = dataSend.replace(']','')
    dataSend = dataSend.replace("'",'')


    print(dataRGB)

  

    print(dataSend)

    ser.on_send(dataSend)
    time.sleep(0.3)

    res = make_response(jsonify({"message": "OK"}), 200)

    return res


def handle_message(msg):
    print("receive a message:", msg)
    # send a msg of str
    ser.on_send("send a str message!!!")
    # send a msg of bytes
    ser.on_send(b'send a bytes message!!!')



@ser.on_log()
def handle_logging(level, info):
    print(level, info)



if __name__ == "__main__":
    app.run(debug = True)

