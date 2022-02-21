#!/bin/sh
set -e 

if [ -f archisthebest ] && [ -x archisthebest ]; then
  ./archisthebest
elif [ -f archisthebest.v ]; then
  v run archisthebest.v
fi
