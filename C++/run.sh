#!/bin/sh 

if [ -f archisthebest -a -x archisthebest ]; then
	./archisthebest
else 
	g++ archisthebest.cpp -o archisthebest && ./archisthebest
fi
