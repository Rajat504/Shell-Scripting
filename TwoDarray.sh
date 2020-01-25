#!/bin/bash
echo "enter the no of rows in TwoDarray"
read rows
echo "enter the no of column in TwoDarray"
read column
for((i=0;i<rows;i++))
do
for((j=0;j<column;j++))
do
read a[$(($i))$(($j))]
done
done
echo ${a[@]}
