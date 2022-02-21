#!/bin/sh 
set -e 

if [ -f archisthebest ] && [ -x archisthebest ]; then
  ./archisthebest
elif [ -f archisthebest.pl ]; then
  gplc --min-size archisthebest.pl && ./archisthebest
fi
