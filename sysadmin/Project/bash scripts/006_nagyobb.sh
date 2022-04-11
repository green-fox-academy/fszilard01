#!/bin/bash

#if [ $1 -gt $2 ]
#        then echo $1" az elso nagyobb"
#        else echo $2" a masodik nagyobb"
#fi

if [ $1 -gt $2 ]
        then echo $1" az elso nagyobb"
        elif [ $2 -gt $1 ]
        then echo $2" a masodik nagyobb"
        else echo "Egyenlo"
fi