#!/bin/bash/ -x
read -p "Enter the value of temperature in wind speed"  t  v
#formula=34.74+0.6215+(0.4274*t-35.75)*Math.pow(v,0.16)
#a1=35.74,a2=0.6215,a3=0.4274,a4=35.75,a5=t,a6=v,a7=0.16
w=$( echo "35.74" "0.6215" "0.4274" "35.75" "$t" "$v" "0.16" |awk '{print $1+$2*$5+( $3*$5-$3 )*( $6**$7 )}' )
if(( $t<50 && $v<120 && $v>3 ))
then
echo "its a absolute value"
else
echo "the value of w is within range"
fi

