#!/bin/bash -x  
echo "Print the Power Of Two"
#taken R as variable 
read i
for (( R=0;R<=i;R++ ))
do
echo $((2**$R))
done
