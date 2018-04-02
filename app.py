from flask import Flask, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST', 'PUT', 'DELETE'])
def forward_request():
    return "Congratulations you have an app running..."    

if __name__ == "__main__":
    # Only for debugging while developing
    app.run(host='0.0.0.0', debug=True, port=8000)
