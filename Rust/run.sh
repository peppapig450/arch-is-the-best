#!/bin/sh 
set -e 

if [ -f archisthebest ] && [ -x archisthebest ]; then
  ./archisthebest
elif [ -f archisthebest.rs ]; then
  rustc -C opt-level=3 -C target-cpu=native archisthebest.rs && 
    ./archisthebest
fi
