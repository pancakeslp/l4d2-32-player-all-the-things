#!/usr/bin/env bash

## exit on error
set -e


if [[ -z "$INSTALL_FOLDER" ]] ; then
  echo "ERROR INSTALL_FOLDER is unset"
  exit 99
fi
