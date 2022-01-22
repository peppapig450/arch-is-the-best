#!/bin/sh 
if [ -f archisthebest.cr ]; then 
  crystal run archisthebest.cr 
else 
  echo "Crystal source file not found!" && 
    exit 1
fi
