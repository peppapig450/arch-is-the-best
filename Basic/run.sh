#!/bin/sh

if [ -f archisthebest -a -x archisthebest ]; then
	./archisthebest
else
	fbc archisthebest.bas && ./archisthebest
fi
