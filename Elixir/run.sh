#!/bin/sh 

if [ -f archisthebest.beam ]; then
  erl -noshell -s archisthebest start -s init stop
else 
  erlc archisthebest.erl && 
    erl -noshell -s archisthebest start -s init stop
fi
