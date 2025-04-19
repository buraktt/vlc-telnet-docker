FROM ubuntu:22.04

COPY startup.sh /root/startup.sh

RUN chmod +x /root/startup.sh && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y linux-sound-base alsa-base alsa-utils vlc

EXPOSE 4212

WORKDIR /root/startup/

ENTRYPOINT ["sh", "/root/startup.sh"]
