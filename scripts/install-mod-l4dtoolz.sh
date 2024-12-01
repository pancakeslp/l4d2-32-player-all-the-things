#!/bin/bash

## exit on error
set -e

INSTALL_FOLDER="/d/Games/l4d-dedicated-server-2024"

## THIS folder
cd "$(dirname "$0")"
cd ../mod-things-raw
cd l4dtoolz-l4d2-*

cp -rf * $INSTALL_FOLDER/left4dead2