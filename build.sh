#!/bin/bash
set -e

sudo apt install -y live-build debootstrap squashfs-tools xorriso

mkdir -p build
cd build

lb config \
  --mode ubuntu \
  --distribution resolute \
  --archive-areas "main restricted universe multiverse" \
  --binary-images iso-hybrid

mkdir -p config
cp -r ../config/* config/

sudo lb build