FROM node:latest

RUN apt-get update

RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
  echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
  apt-get update && \
  apt-get install -y google-chrome-stable xvfb

RUN npm -v
RUN apt update && apt install -y procps
RUN apt clean
RUN rm -rf /var/lib/apt/lists/*
