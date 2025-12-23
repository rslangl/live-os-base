#!/bin/bash

set -e

rm -rf chroot binary cache

# Configure live-build
lb config \
  --config /workdir/config \
  --architectures amd64 \
  --distribution bookworm \
  --debian-installer none \
  --binary-images iso-hybrid \
  --bootappend-live "boot=live components" \
  --mirror-bootstrap http://deb.debian.org/debian/ \
  --mirror-binary http://deb.debian.org/debian/ \
  --image-name live

# Build image
lb build

mv live-amd64.hybrid.iso /workdir/output/live.iso
