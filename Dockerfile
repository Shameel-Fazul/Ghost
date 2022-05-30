FROM ubuntu:bionic
FROM python:3.8
RUN apt-get install libportaudio2
RUN apt-get update -y && apt-get upgrade -y

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "Ghost.py"]
