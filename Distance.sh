#!/bin/bash -x
echo "Enter the value :"
read x 
read y
sum=$(($(($x*$x)) + $(($y*$y))))
echo $sum
a=$(echo $sum|awk '{print sqrt($1)'})
echo $a
