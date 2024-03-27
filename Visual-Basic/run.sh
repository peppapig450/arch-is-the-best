#!/bin/sh 
set -e 

if [ -f archisthebest.exe ] && xset -q >/dev/null 2>&1; then
  mono archisthebest.exe &
  sleep 1 &&
  pkill -9 mono
fi
