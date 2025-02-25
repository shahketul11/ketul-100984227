from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello Cloud Run! Name: Ketul Shah and Student ID:100984227"

if __name__ == "__main__": 
    app.run(host="0.0.0.0", port=8080)
