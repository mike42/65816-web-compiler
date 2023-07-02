#!/bin/bash
# install-calypsi-65816.sh: Download & install Calypsi C compiler (65816 target).
set -exu -o pipefail

export CALYPSI_VERSION="4.4"

# download and install calypsi 65816
wget "https://github.com/hth313/Calypsi-tool-chains/releases/download/${CALYPSI_VERSION}/calypsi-65816-${CALYPSI_VERSION}.deb" -O "/tmp/calypsi-65816-${CALYPSI_VERSION}.deb"
dpkg -i "/tmp/calypsi-65816-${CALYPSI_VERSION}.deb"
rm "/tmp/calypsi-65816-${CALYPSI_VERSION}.deb"

/usr/local/bin/cc65816 --version

