#!/bin/sh 
set -e 

if [ -f archisthebest.pl ] && [ -x archisthebest.pl ]; then
  ./archisthebest.pl
elif [ -f archisthebest.pl ] && ! [ -x archisthebest.pl ]; then 
  perl archisthebest.pl 
fi
