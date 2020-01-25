#!/bin/bash/ -x
echo "enter the value of A,B,C"
read A
read B
read C
if [ $A!=0 ]
then
 D=$(( $(($B*$B))-$((4*$A*$C)) ))
echo $D
else
echo " invalid"
fi

if(($D>=0))
then
x=$(echo "$D" "$B" "$C" | awk '{print (-$2-sqrt($1))/(2*$3)}')
y=$(echo "$D" "$B" "$C" | awk '{print (-$2+sqrt($1))/(2*$3)}')
echo the roots are $x and $y
else
echo "Roots cannot be possible"
fi
