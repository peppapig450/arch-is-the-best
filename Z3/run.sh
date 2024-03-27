#!/bin/sh
set -e 

if [ -f archisthebest.z3 ]; then
  z3 archisthebest.z3
fi
