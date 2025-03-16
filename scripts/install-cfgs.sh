#!/bin/bash

## exit on error
set -e

./ensure-varible-INSTALL_FOLDER.sh


cd "$(dirname "$0")"
cd ../
cp cfg/*  "${INSTALL_FOLDER}/left4dead2/cfg/"
