#!/bin/bash

#if [ `cat $1 | wc -c` -gt `cat $2 | wc -c` ]
#        then echo "A $1 file-ban tobb karakter van"
#        else echo "A $2 file-ban tobb karakter van"
#fi

if [ `cat $1 | wc -c` -gt `cat $2 | wc -c` ]
        then echo "A $1 file-ban tobb karakter van"
        elif [ `cat $2 | wc -c` -gt `cat $1 | wc -c` ]
        then echo "A $2 file-ban tobb karakter van"
        else echo "A ket file egyenlo"
        
fi