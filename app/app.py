from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return """
    <h1>ECS CI/CD LAB</h1>
    <h2>Version 1.0</h2>
    """

@app.route("/health")
def health():
    return "OK", 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
