from flask import Flask
app = Flask(__name__)

@app.route('/healthz')
def healthz():
  return 'Hello! This is my page for task 2 to INT4 PTStart!!!'

if __name__ == '__main__':
  app.run(debug=True, host='0.0.0.0', port=5000)