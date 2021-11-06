FROM debian:10

RUN apt-get update && apt-get -y dist-upgrade
RUN apt-get install -y curl python3 && ln -sf /usr/bin/python3 /usr/bin/python
RUN apt-get install -y --no-install-recommends ffmpeg
RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && chmod a+rx /usr/local/bin/youtube-dl

WORKDIR /data

ENTRYPOINT [ "/usr/local/bin/youtube-dl" ]
