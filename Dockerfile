# Используем базовый образ Python 3
FROM python:3

# Установка зависимостей Flask, Psycopg2 и ConfigParser
RUN pip install Flask psycopg2-binary configparser

# Установка рабочей директории внутри контейнера
WORKDIR /srv/app

# Копирование приложения и конфигурационного файла в контейнер
COPY ./web.py /srv/app/web.py
COPY ./conf/web.conf /srv/app/conf/web.conf

# Команда, которая будет запускать приложение при старте контейнера
CMD ["python", "/srv/app/web.py"]
