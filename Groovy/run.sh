#!/bin/sh 
set -e 

if [ -f archisthebest.groovy ]; then 
  groovy archisthebest.groovy 2>/dev/null
fi
