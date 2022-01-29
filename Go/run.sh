#!/bin/sh 
set -e

if [ -f archisthebest ] && [ -x archisthebest ]; then 
  ./archisthebest
elif [ -f archisthebest.go ]; then 
  go run archisthebest.go 
fi 
