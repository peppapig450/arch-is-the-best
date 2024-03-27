#!/bin/sh

if [ -f archisthebest.lisp -a -x archisthebest.lisp ]; then
	./archisthebest.lisp
else
	sbcl --script archisthebest.lisp
fi
