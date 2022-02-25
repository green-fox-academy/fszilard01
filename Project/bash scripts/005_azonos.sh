#!/bin/bash

#if [ $# -eq 2 ]
#       then if [ $1 = $2 ]
#        then echo "A ket karakter azonos"
#        else echo "A ket karakter nem azonos"
#fi
#else echo "Ket parametert adj meg!"
#fi

#Always use double quotes around the variable names to avoid any word splitting or globbing issues.
#[[ "$1" == "$2" ]] && echo "Equal" || echo "Not equal"

if [ "$1" = "$2" ]
  then echo "A ket karakter azonos"
  else echo "A ket karakter nem azonos"
fi

