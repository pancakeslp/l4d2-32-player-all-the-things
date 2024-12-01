#!/usr/bin/env sh

## exit on error
set -e


export INSTALL_FOLDER="/d/Games/L4D-Dedicated-Server-2024/"

./ensure-varible-INSTALL_FOLDER.sh


## THIS folder
cd "$(dirname "$0")"
cd ../mod-things-raw
cd survivor_afk_fix

cp -rf * $INSTALL_FOLDER/left4dead2