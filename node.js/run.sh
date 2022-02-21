#!/bin/sh 
set -e 

SCRIPT_DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

if [ -f archisthebest.js ]; then 
  echo "console output from node.js"
  node archisthebest.js
fi 

if [ -d "$SCRIPT_DIR/http" ]; then 
  path="$SCRIPT_DIR/http"
  echo "node.js http server output"
  node "$path/archisthebest.js" & 
  sleep 1
  curl http://localhost:8080 
fi 

trap "trap - SIGTERM && pkill node"  SIGINT SIGTERM EXIT
