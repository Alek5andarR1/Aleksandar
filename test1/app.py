from flask import Flask
from flask_serial import Serial

app = Flask(__name__)
app.config['SERIAL_TIMEOUT'] = 0.2
app.config['SERIAL_PORT'] = '/dev/serial0'
app.config['SERIAL_BAUDRATE'] = 115200
app.config['SERIAL_BYTESIZE'] = 8
app.config['SERIAL_PARITY'] = 'N'
app.config['SERIAL_STOPBITS'] = 1


ser =Serial(app)

@app.route('/')
def use_serial():
    ser.on_send('8')
    print('message sent')
    return 'use flask serial!'

def handle_message(msg):
    print("receive a message:", msg)
    # send a msg of str
    ser.on_send("send a str message!!!")
    # send a msg of bytes
    ser.on_send(b'send a bytes message!!!')



@ser.on_log()
def handle_logging(level, info):
    print(level, info)

if __name__ == '__main__':
    app.run()
    
