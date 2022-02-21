#!/bin/sh 
set -e 

if [ -f ArchIsTheBest.jar ]; then 
  java -jar ArchIsTheBest.jar
elif ! [ -f ArchIsTheBest.jar ] && [ -f ArchIsTheBest.kt ]; then 
  kotlinc ArchIsTheBest.kt -include-runtime -d ArchIsTheBest.jar &&
    java -jar ArchIsTheBest.jar 
fi
