#!/bin/bash

# Author: Alvaro Pinot
# Url: https://github.com/alvaropinot/nocloud


#######################################
# no_sync ()
# 
# Adds `.nosync` extension to the give argument
# and creates a symbolic link with the original name.
#
# Arguments:
#  Filename or directory name to process.
# 
# Returns:
#  None
#######################################
no_sync () {
  echo "Stopping iCloud sync for $1"

  mv "$1" "$1.nosync"
  echo "Moved $1 to $1.nosync"

  ln -s "$1.nosync" "$1"
  echo "Symbolic link created for $1.nosync -> $1"
}

until [ -z "$1" ]  # Until all parameters used up.
do
  no_sync $1
  shift # Shift param n+1 into $1.
done
