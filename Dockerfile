FROM python:3

RUN pip install Flask psycopg2-binary configparser

WORKDIR /srv/app

COPY ./web.py /srv/app/web.py
COPY ./conf/web.conf /srv/app/conf/web.conf

CMD ["python", "/srv/app/web.py"]
