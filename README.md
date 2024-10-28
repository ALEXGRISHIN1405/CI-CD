# CI-CD
Репозиторий для второго задания INT4 PTStart.

Автор: Гришин Александр grishin.alieksandr@inbox.ru

Данный репозиторий содержит 2 файла:
1) main.py - файл, содержащий код HTTP-сервера, возвращающий "200 ОК" на запрос "/healthz",
написанный на фреймворке flask
2) Dockerfile - файл, собирающий этот HTTP-сервер в Docker образ

Далее приведена инструкция по запуску сервера и сборке Docker образа. Инструкция работает на Ubuntu 24.04

Для запуска сервера с хостовой машины необходимо выполнить следующие команды:

1) Установить все необходимые пакеты:
     ```bash
   apt install -y python3 python3-venv python3-pip
     ```
3) Создать виртуальное окружение
     ```bash
   python3 -m venv myenv
     ```
5) Активировать виртуальное окружение
     ```bash
   source myenv/bin/activate
     ```
7) Установить Flask
   ```bash
   pip install Flask
   ```
9) Запустить сервер
     ```bash
   python main.py
     ```

После выполнения этих команд запустится HTTP-сервер, возвращающий "200 ОК" на запрос "http://localhost:5000/healthz"

Для запуска через Docker образ необходимо выполнить следующие команды:

1) Сборка образа с именем task2
     ```bash
   docker build ./ -t task2
     ```
3) Создание сети для запуска контейнера
     ```bash
   docker network create my_network
     ```
5) Запуск контейнера в сети my_network
     ```bash
   docker run -d --name task2 --net my_network -p 5000:5000 task2
     ```

После выполнения этих команд запустится HTTP-сервер, возвращающий "200 ОК" на запрос "http://localhost:5000/healthz"
