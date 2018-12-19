from flask import Flask
app = Flask(__name__)


@app.route("/")
def index():
    return "hello, flask!"


@app.route("/health")
def health():
    return "healthy"


if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')
