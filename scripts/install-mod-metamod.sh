#!/bin/bash

## exit on error
set -e

./ensure-varible-INSTALL_FOLDER.sh


## THIS folder
cd "$(dirname "$0")"
cd ../mod-things-raw
cd mmsource*

cp -rf * "$INSTALL_FOLDER/left4dead2"