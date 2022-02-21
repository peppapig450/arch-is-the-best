#!/bin/sh
set -e 

if [ -f archisthebest ] && [ -x archisthebest ]; then
  ./archisthebest 
elif [ -f archisthebest.v ]; then
  iverilog -o archisthebest archisthebest.v && ./archisthebest
fi
