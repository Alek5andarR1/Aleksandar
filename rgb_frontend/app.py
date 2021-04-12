from flask import Flask, render_template, request, jsonify, make_response

app = Flask(__name__)

@app.route('/')
def home():
   return render_template('index.html')

@app.route("/data", methods=["POST"])
def data():

    req = request.get_json()

    print("req: ",req, " ::end req")
    print("halo")

    res = make_response(jsonify({"message": "OK"}), 200)

    return res


if __name__ == "__main__":
    app.run(debug = True)

