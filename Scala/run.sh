#!/bin/sh
set -e 

if [ -f ArchIsTheBest.class ]; then
  scala ArchIsTheBest 
elif [ -f ArchIsTheBest.scala ]; then
  scalac ArchIsTheBest.scala && scala ArchIsTheBest
fi
