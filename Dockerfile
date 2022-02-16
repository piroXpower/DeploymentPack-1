FROM nikolaik/python-nodejs:latest

RUN git clone https://github.com/H1M4N5HU0P/MAFIA-USERBOT.git /root/userbot

RUN pip install --upgrade pip

RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY . /app/
WORKDIR /app/
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD python3 Music.py
