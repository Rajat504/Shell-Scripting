echo "enter the coupan number"
read number
coupan=""
for(( i=0;i<6;i++ ))
do
s=$(( $RANDOM%10 ))
if (( $coupan = ""$s"" ))
then
coupan="$coupan""$s"
fi
done
echo "coupan number is"
echo $coupan
