FROM balenalib/raspberrypi3-debian:bookworm

WORKDIR /opt

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    libssl-dev \
    && git clone https://github.com/lorabasics/basicstation.git \
    && cd basicstation \
    && make platform=rpi variant=std

# config persistée
# Copier les fichiers de config
COPY station.conf /opt/station.conf
COPY tc.uri /opt/tc.uri
COPY tc.trust /opt/tc.trust

# entrypoint
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/opt/basicstation/build-rpi-std/bin/station", "-f", "/data/station.conf"]