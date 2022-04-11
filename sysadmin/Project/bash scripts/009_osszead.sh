#!/bin/bash

sum=0
for i
do
        sum=`expr $sum + $i`
done
echo "A szamok osszege: "$sum