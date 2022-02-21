#!/bin/sh
set -e 

if [ -f archisthebest.rkt ]; then
  racket archisthebest.rkt 
fi
