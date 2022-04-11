#!/bin/bash

file=$2

echo " Hello $1 !"

if test -f "$file" ; then exit
    else 
    echo "Hello $1 !" > $file
fi