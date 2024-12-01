#!/bin/bash

## exit on error
set -e


export INSTALL_PATH="/mnt/d/Games/L4D-Dedicated-Server-2024.2/"


## THIS folder
cd "$(dirname "$0")"

./install-l4d2-dedicated-server.sh
./install-mod-metamod.sh
./install-mod-sourcemod.sh
./install-mod-l4dtoolz.sh
./install-mod-maxplayers

cp ./fix_maplist_part1.sh ${INSTALL_PATH}/
cd ${INSTALL_PATH}/
 ./fix_maplist_part1.sh
 ./fix_maplist_part2.sh


## THIS folder
cd "$(dirname "$0")"
cd ../
cp cfg/*  ${INSTALL_PATH}/left4dead2/cfg/


echo DONE