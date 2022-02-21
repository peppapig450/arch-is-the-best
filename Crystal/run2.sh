#!/bin/sh

trap '[ -n "$(jobs -pr)" ] && kill "$(jobs -pr)"' INT QUIT TERM EXIT

PS3='Please enter your choice: '
options=('Web Server' 'Simple' 'Quit')
select opt in "${options[@]}"; do
  case "$opt" in
    "Web Server")
      echo "Get the text through a web server"
      ./archisthebest2 &
      curl http://127.0.0.1:10050
      break
      ;;
    "Simple")
      echo "Get the text directly"
      crystal run archisthebest.cr
      break
      ;;
    "Quit")
      break
      ;;
    *) echo "invalid option $REPLY" ;;
  esac
done
