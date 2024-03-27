#!/bin/sh

if [ -f archisthebest -a -x archisthebest ]; then
	./archisthebest
else
	cobc -x archisthebest.cob -o archisthebest && ./archisthebest
fi
