#!/bin/sh 
set -e 

if [ -f archisthebest ] && [ -x archisthebest ]; then
  ./archisthebest
elif ! [ -f archisthebest ] && [ -f archisthebest.p ]; then
  fpc archisthebest.p &>/dev/null && ./archisthebest
fi
