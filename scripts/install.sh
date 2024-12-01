#!/bin/bash

## exit on error
set -e


#export INSTALL_PATH="/mnt/d/Games/L4D-Dedicated-Server-2024/"
export INSTALL_PATH="/d/Games/L4D-Dedicated-Server-2024/"


## THIS folder
cd "$(dirname "$0")"

#./install-l4d2-dedicated-server.sh

./install-mod-metamod.sh
./install-mod-sourcemod.sh
./install-mod-l4dtoolz.sh
./install-mod-maxplayers.sh
./install-mod-survivor_afk_fix.sh
./install-cfg.sh

cp ./fix_maplist_part1.sh ${INSTALL_PATH}/
cd ${INSTALL_PATH}/
./fix_maplist_part1.sh
./fix_maplist_part2.sh


echo DONE!