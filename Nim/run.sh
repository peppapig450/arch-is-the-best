#!/bin/sh
set -e 

if [ -f archisthebest ] && [ -x archisthebest ]; then
  ./archisthebest
elif [ -f archisthebest.nim ]; then 
  nim c -d:release -d:danger --gc:arc --passC:"-flto" archisthebest.nim &&
    ./archisthebest
fi
