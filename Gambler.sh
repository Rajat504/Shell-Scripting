#! /bin/bash/ -x
echo "enter the no.of times you want to play the game"
read time1
echo "enter the stake you have"
read stake
echo "enter your goal"
read goal 

bets=1
win=0
loss=0
while [[ $stake>0 && $stake<$goal ]]
do
      r=$(($RANDOM%10+1))

if(( $r>5 ))
then
       stake=$(($stake+1))
else
        stake=$(($stake-1))
fi
done

if(($stake==$goal))
then
echo you win
else
echo you loss
fi
