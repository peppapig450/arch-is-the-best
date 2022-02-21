#!/bin/sh 
set -e 

if [ -f archisthebest ] && [ -x archisthebest ]; then
  ./archisthebest
elif [ -f archisthebest.ml ]; then
  ocamlc -o archisthebest archisthebest.ml && 
    ./archisthebest
fi
