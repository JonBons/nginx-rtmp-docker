FROM tiangolo/nginx-rtmp:latest

MAINTAINER Matthew Graham <me@mattgraham.me>

# Install ffmpeg / aac / envsubst
RUN echo 'deb http://www.deb-multimedia.org jessie main non-free' >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y --force-yes \
        deb-multimedia-keyring \
        ffmpeg \
        gettext-base && \
    apt-get autoremove -yqq && \
    apt-get clean -yqq && \
