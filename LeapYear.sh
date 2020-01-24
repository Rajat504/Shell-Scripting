#!/bin/bash
echo "enter the year"
read Year
#if the year is betwn the 2000 and 2048
if (($Year>=2000 && $Year<=2048))
then
echo "Year a leap year"
else
if (( $Year%4==0 || $Year%400==0 && $Year%100!=0 ))
then
echo "year is a leap year"
else
echo "Year is not a leap year"
fi
fi
