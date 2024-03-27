#!/bin/sh 
set -e

if [ -f archisthebest ] && [ -x archisthebest ]; then
  ./archisthebest
elif [ -f archisthebest.vala ]; then
  valac archistehbest.vala && ./archisthebest
fi
