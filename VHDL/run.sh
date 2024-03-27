#!/bin/sh
set -e 

if [ -f archisthebest ] && [ -x archisthebest ]; then
  ./archisthebest
fi
