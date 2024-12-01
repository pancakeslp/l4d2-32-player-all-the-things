#!/usr/bin/env bash

## exit on error
set -e

echo INSTALL_FOLDER
echo $INSTALL_FOLDER
echo

if [[ -z "$INSTALL_FOLDER" ]] ; then
  echo "ERROR INSTALL_FOLDER is unset"
  exit 99
fi
