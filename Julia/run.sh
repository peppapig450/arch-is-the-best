#!/bin/sh 
set -e 

if [ -f archisthebest.jl ]; then
  julia archisthebest.jl 
fi
