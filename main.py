from flask import Flask # Импорт библиотеки Flask

app = Flask(__name__) # Создание экземпляра приложения

@app.route('/healthz') # Определение маршрута
def healthz():
  return 'Hello! This is my page for task 2 to INT4 PTStart!!!'

if __name__ == '__main__': # Запуск приложения
  app.run(debug=True, host='0.0.0.0', port=5000)
