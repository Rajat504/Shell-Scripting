#!/bin/bash
echo "start the timer"
read 
H=$(date '+%H')
M=$(date '+%M')
S=$(date '+%S')
echo "Time is :$H:$M:$S"
echo "stop the timer"
read 
h=$(date '+%H')
m=$(date '+%M')
s=$(date '+%S')
echo "time is :$h:$m:$s"
Q=$(($h-$H))
W=$(($m-$M))
E=$(($s-$S))
echo "Time iS:$Q:$W:$E"
