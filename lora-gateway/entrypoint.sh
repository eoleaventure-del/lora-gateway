#!/bin/sh

if [ ! -f /data/station.conf ]; then
  echo "Init station.conf"
  cp /opt/station.conf /data/station.conf
fi

exec /opt/basicstation/build-rpi-std/bin/station -f /data/station.conf
