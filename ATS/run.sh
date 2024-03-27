#!/bin/sh 

if [ -f archisthebest ] && [ -x archisthebest ]; then
	./archisthebest
else 
	patscc -cleanaft -o archisthebest archisthebest.dats && ./archisthebest
fi
