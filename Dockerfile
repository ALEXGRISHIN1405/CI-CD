# Выбор базового образа
FROM ubuntu:22.04
LABEL maintainer="grishin.alieksandr@inbox.ru"

# Обновление пакетов и установка необходимых зависимостей
RUN apt update && apt upgrade -y && \
    apt install -y python3 python3-venv python3-pip

# Создание рабочей директории для сервера
RUN mkdir /app_directory
WORKDIR /app_directory

# Копирование файлов сервера в контейнер
COPY ./main.py ./

# Создание виртуального окружения и установка Flask
RUN python3 -m venv myenv && \
    ./myenv/bin/pip install Flask

# Установка переменной окружения для активации виртуального окружения
ENV VIRTUAL_ENV=/app_directory/myenv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Открытие порта 5000
EXPOSE 5000

# Запуск сервера
CMD ["python3", "main.py"]