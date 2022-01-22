#!/bin/sh 

if [ -f archisthebest.sh ] && [ -x archisthebest.sh ]; then 
  ./archisthebest.sh
elif [ -f archisthebest.sh ] && ! [ -x archisthebest.sh ]; then 
  chmod +x archisthebest.sh && ./archisthebest.sh
fi 

sleep 2 
echo "Running alternative"

if [ -f archisthebest2.sh ] && [ -x archisthebest2.sh ]; then 
  ./archisthebest2.sh
elif [ -f archisthebest2.sh ] && ! [ -x archisthebest2.sh ]; then 
  chmod +x archisthebest2.sh && ./archisthebest2.sh
fi
