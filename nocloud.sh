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
  echo "Stopping node_modules iCloud sync for all subdirectories in $1"
  find $1 -depth -type d -name 'node_modules' -execdir mv {} {}.nosync \;
  find $1 -depth -type d -name 'node_modules.nosync' -execdir ln -s {} node_modules \;
}

until [ -z "$1" ]  # Until all parameters used up.
do
  no_sync "$1"
  shift # Shift param n+1 into $1.
done
