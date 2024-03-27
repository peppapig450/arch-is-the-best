#!/bin/sh

if [ -f archisthebest ] && [ -x archisthebest ]; then
	./archisthebest
else
	nasm -f elf64 archisthebest.asm && ld archisthebest.o -o archisthebest && ./archisthebest
fi
