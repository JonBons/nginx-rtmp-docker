FROM tiangolo/nginx-rtmp:latest

MAINTAINER Matthew Graham <me@mattgraham.me>

# Install ffmpeg / aac / envsubst
RUN sed -i "s/jessie main/jessie main contrib non-free/" /etc/apt/sources.list
RUN echo "deb http://http.debian.net/debian jessie-backports main contrib non-free" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
    ffmpeg
