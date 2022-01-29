#!/bin/sh 
set -e 

if [ -f ArchIsTheBest.java ] && [ -f ArchIsTheBest.class ]; then 
  java ArchIsTheBest
elif [ -f ArchIsTheBest.java ]; then 
  javac ArchIsTheBest.java && java ArchIsTheBest
fi
