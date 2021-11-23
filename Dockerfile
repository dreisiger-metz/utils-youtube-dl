FROM debian:10

RUN apt-get update && apt-get -y dist-upgrade
RUN apt-get install -y curl python3 && ln -sf /usr/bin/python3 /usr/bin/python
RUN apt-get install -y --no-install-recommends ffmpeg
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/youtube-dl && chmod a+rx /usr/local/bin/youtube-dl
 

WORKDIR /data

ENTRYPOINT [ "/usr/local/bin/youtube-dl" ]
