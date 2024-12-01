#!/bin/bash

## exit on error
set -e

## git bash
INSTALL_PATH="/d/Games/L4D-Dedicated-Server-2024/"
## WSL
INSTALL_PATH="/mnt/d/Games/L4D-Dedicated-Server-2024/"

echo "I acknowledge i am NOT running this via GIT BASH"
echo "AND if i am i recognise that STDOUT will be very slow"
echo "(so slow that it gives the impression it has crashed"


## THIS folder
cd "$(dirname "$0")"
cd ../steamcmd/

echo loading STEAMCMD ...
echo

./steamcmd.exe \
  +force_install_dir "${INSTALL_PATH}" \
  +login anonymous            \
  +app_update 222860          \
  +app_update 222860 validate \
  +quit

echo DONE