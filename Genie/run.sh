#!/bin/sh 
set -e 
if [ -f archisthebest ] && [ -x archisthebest ]; then 
  ./archisthebest
elif [ -f archisthebest.gs ]; then 
  valac archisthebest.gs && ./archisthebest
fi 
