#!/bin/bash

## exit on error
set -e


#export INSTALL_FOLDER="/mnt/d/Games/L4D-Dedicated-Server-2024/"
#export INSTALL_FOLDER="/d/Games/L4D-Dedicated-Server-2024/"
export INSTALL_FOLDER="/e/workspace/l4d2-32-player-all-the-things/steamcmd/steamapps/common/Left 4 Dead 2 Dedicated Server"

echo INSTALL_FOLDER
echo $INSTALL_FOLDER
echo

## THIS folder
cd "$(dirname "$0")"

#./install-l4d2-dedicated-server.sh

echo ./install-mod-metamod.sh
./install-mod-metamod.sh

echo ./install-mod-sourcemod.sh
./install-mod-sourcemod.sh

echo ./install-mod-l4dtoolz.sh
./install-mod-l4dtoolz.sh

echo ./install-mod-maxplayers.sh
./install-mod-maxplayers.sh

echo ./install-mod-survivor_afk_fix.sh
./install-mod-survivor_afk_fix.sh

echo ./install-cfgs.sh
./install-cfgs.sh

echo
echo "MAP FIXING ..."
cp ./fix_maplist_part1.sh "${INSTALL_FOLDER}/"
cd "${INSTALL_FOLDER}/"
./fix_maplist_part1.sh
./fix_maplist_part2.sh


echo DONE!