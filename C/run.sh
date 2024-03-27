#!/bin/sh 

if [ -f archisthebest -a -x archisthebest ]; then
	./archisthebest
else
	gcc archisthebest.c -o archisthebest && ./archisthebest
fi
