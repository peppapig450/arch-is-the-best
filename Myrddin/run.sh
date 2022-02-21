#!/bin/sh
set -e 

if [ -f archisthebest ] && [ -x archisthebest ]; then 
  ./archisthebest
elif [ -f archisthebest.myr ]; then 
  mbld -R archisthebest.myr 
fi
