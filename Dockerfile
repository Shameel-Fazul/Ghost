FROM python:3.8.13-slim-bullseye

WORKDIR /app

COPY requirements.txt requirements.txt
RUN apt-get update && sudo apt-get install libportaudio2
RUN pip3 install -r requirements.txt

COPY . .

CMD ["python", "Ghost.py"]
