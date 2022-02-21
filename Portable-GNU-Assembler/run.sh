#!/bin/sh 

if [ -f archisthebest ] && [ -x archisthebest ]; then
  ./archisthebest
elif [ -f archisthebest.s ]; then
  as -o archisthebest archisthebest.s && ld -o archisthebest -O0 archisthebest.o
  ./archisthebest
fi
