FROM python:3.8

WORKDIR /app

COPY ./web ./app
COPY manage.py entrypoint.sh ./

COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt

RUN ["chmod", "+x", "./entrypoint.sh"]

EXPOSE 8000
