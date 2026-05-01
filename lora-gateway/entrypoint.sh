#!/bin/sh
set -e

echo "DEBUG ENTRYPOINT OK"

cd /opt/basicstation/build-rpi-std/bin

# copier les fichiers au bon endroit
cp /opt/station.conf ./station.conf
cp /opt/cups.uri ./cups.uri
cp /opt/tc.uri ./tc.uri
cp /etc/ssl/certs/ca-certificates.crt ./cups.trust
cp /etc/ssl/certs/ca-certificates.crt ./tc.trust

echo "FILES PRESENT:"
ls -l

echo "STARTING BASICSTATION..."

# purge arguments parasites
set --

exec ./station