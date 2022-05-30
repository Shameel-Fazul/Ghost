FROM ubuntu:bionic
FROM python:3.8
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0 && sudo apt-get install ffmpeg libav-tools

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "Ghost.py"]
