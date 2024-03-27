#!/bin/sh 
set -e 

if [ -f archisthebest ] && [ -x archisthebest ]; then
  ./archisthebest
elif [ -f archisthebest.bas ]; then
  fbc -lang qb archisthebest.bas && ./archisthebest
fi
