#!/bin/bash 
echo "print the harmonic number"
read n
#now we have to compute the harmonic number
for(( i=1;i<=n;i++ ))
do #this is used for opening the brackets 
a=$(echo "$i" "$a"|awk '{print $2+(1/$1)}')
echo $a
done #this is used for closing the brackets
#this method finds the decimal value

