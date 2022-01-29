#!/bin/sh 
set -e

if [ -f build/exec/archisthebest ] && [ -x build/exec/archisthebest ]; then 
  ./build/exec/archisthebest 
fi 
