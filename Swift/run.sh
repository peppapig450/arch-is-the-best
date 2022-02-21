#!/bin/sh 
set -e 

if [ -f .build/debug/Swift ] && [ -x .build/debug/Swift ]; then
  .build/debug/Swift
fi
