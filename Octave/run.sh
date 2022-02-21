#!/bin/sh 
set -e 

if [ -f archisthebest.m ]; then
  octave archisthebest.m 2>/dev/null
fi
