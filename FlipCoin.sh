
echo "How many no. of times you want to toss a coin"

Coin=$((RANDOM%2))
echo "$Coin"
if((Coin==1))
then
echo " You get Head"
else
echo "you get tail" 
fi

