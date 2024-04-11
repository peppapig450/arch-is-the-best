#!/bin/sh 
set -e

if [ -f archisthebest ] && [ -x archisthebest ]; then 
  ./archisthebest
elif [ -f archisthebest.f95 ]; then 
   gfortran -Ofast -march=znver2 -mtune=znver2 -fstack-clash-protection -fstack-protector-strong archisthebest.f95 -o archisthebest && 
     ./archisthebest
fi 
