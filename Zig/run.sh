#!/bin/sh 
set -e 

if [ -f archisthebest ] && [ -x archisthebest ]; then
  echo "Zig: "
  sleep 1
  ./archisthebest
elif [ -f archisthebest.zig ]; then
  echo "Zig: "
  sleep 1
  zig run archisthebest.zig 
fi 
