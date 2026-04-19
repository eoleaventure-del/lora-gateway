FROM balenalib/raspberrypi3-debian:bookworm

WORKDIR /opt

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    libssl-dev \
    && git clone https://github.com/lorabasics/basicstation.git \
    && cd basicstation \
    && make platform=rpi variant=std

# Copier le fichier de config dans l'image
COPY station.conf /opt/station.conf

# Copier le script d'entrée
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Lancement du container
CMD ["/entrypoint.sh"]