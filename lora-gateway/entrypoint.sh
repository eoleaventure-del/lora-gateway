#!/bin/sh

set -e

echo "Starting entrypoint..."

# Init config si absente
if [ ! -f /data/station.conf ]; then
  echo "Init station.conf"
  cp /opt/station.conf /data/station.conf
fi

if [ ! -f /data/tc.uri ]; then
  echo "Init tc.uri"
  cp /opt/tc.uri /data/tc.uri
fi

cd /data

echo "Launching station..."

exec /opt/basicstation/build-rpi-std/bin/station