#!/bin/bash

## exit on error
set -e

INSTALL_FOLDER="/d/Games/l4d-dedicated-server-2024"

## THIS folder
cd "$(dirname "$0")"
cd ../mod-things-raw
cd maxplayers32addon

cp -rf compiled/maxplayersaddon.smx  $INSTALL_FOLDER/left4dead2/addons/sourcemod/plugins/
cp -rf maxplayersaddon.sp            $INSTALL_FOLDER/left4dead2/addons/sourcemod/scripting/
