from flask import Flask
from flask import request
app = Flask(__name__)

@app.route("/")
def hello():
    banner = "Hello, %s." % (request.remote_addr)
    return banner

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
