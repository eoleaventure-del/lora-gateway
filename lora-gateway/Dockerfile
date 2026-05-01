FROM balenalib/raspberrypi3-debian:bookworm

WORKDIR /opt

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    libssl-dev \
    ca-certificates \
    && git clone https://github.com/lorabasics/basicstation.git \
    && cd basicstation \
    && make platform=rpi variant=std

COPY station.conf /opt/station.conf
COPY entrypoint.sh /entrypoint.sh
COPY tc.uri /opt/tc.uri
COPY cups.uri /opt/cups.uri
COPY tc.trust /opt/tc.trust
COPY cups.trust /opt/cups.trust

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD []
