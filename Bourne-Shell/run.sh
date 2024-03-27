#!/bin/sh

if [ -f archisthebest.sh ] && [ -x archisthebest.sh ]; then
  ./archisthebest.sh
elif [ -f archisthebest.sh ] && ! [ -x archisthebest.sh ]; then
  chmod +x archisthebest.sh && ./archisthebest.sh
fi
