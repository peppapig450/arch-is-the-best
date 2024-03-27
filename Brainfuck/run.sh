#!/bin/sh

if [ -f archisthebest -a -x archisthebest ]; then
	./archisthebest
else
	bfc archisthebest.bf && mv a.out archisthebest && ./archisthebest
fi
