#!/bin/sh

if [ ! -f /data/station.conf ]; then
  echo "Init station.conf"
  cp /opt/station.conf /data/station.conf
fi

cd /data
exec /opt/basicstation/build-rpi-std/bin/station
