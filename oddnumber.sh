#!/bin/bash

echo -n "Enter a first number: "
read fs

is_odd(){ 
  x=$1
  if [ $((x%2)) == 0 ]; then
     echo "Invalid Input"
     exit 1
  else
     echo "Number is Odd"
  fi
}
is_odd fs
