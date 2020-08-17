#!/bin/bash

function get_download_version {
echo $GUNBOT_VERSION
}

DOWNLOAD_VERSION=$(get_download_version)

wget https://github.com/GuntharDeNiro/BTCT/releases/download/v$DOWNLOAD_VERSION/lin.zip
unzip lin.zip
mv lin gunbot
chmod +x gunbot/gunthy-linux