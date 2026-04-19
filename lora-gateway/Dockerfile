FROM balenalib/raspberrypi3-debian:bookworm

WORKDIR /opt

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    libssl-dev \
    && git clone https://github.com/lorabasics/basicstation.git \
    && cd basicstation \
    && make platform=rpi variant=std

CMD ["/opt/basicstation/build-rpi-std/bin/station", "-f", "/tmp/balena/data/station.conf"]