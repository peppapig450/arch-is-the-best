#!/bin/bash

PS3='Please enter your choice: '
options=('Multiple Languages' 'Simple One' 'Quit')
select opt in "${options[@]}"; do
  case "$opt" in
    "Multiple Languages")
      echo "Running lisp program with multiple language options"
      ./archisthebest.lisp
      break
      ;;
    "Simple One")
      echo "Running simple lisp program with only English"
      ./archisthebest2.lisp
      break
      ;;
    "Quit")
      break
      ;;
    *) echo "invalid option $REPLY" ;;
  esac
done
