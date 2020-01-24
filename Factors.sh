echo "enter the number"
read n
for((i=2;i<=n;i++))
do
if(($n%$i==0)) 
then
echo "$i is a factor of $n"
fi
done
#for ((j=3;j<=n;j++))
#do
#if (($n%$i!=0 ))
#then
#echo "$j is a factor of $n"
#fi
#done

