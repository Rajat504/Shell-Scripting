echo "enter the length of array"
read L
p=$L
declare -A arr
echo "enter the value of i"
read i
echo "enter the value of j"
read j
echo "enter the value of k"
read k
for(( i=0;i<p-2;i++ ))
do
for(( j=i+1;j<p-1;j++ ))
do 
for(( k=i+2;k<p;k++ ))
do
if(($((arr[$i]+arr[$j]+arr[$k]))==0))
then
echo "${#arr[@]}"
fi
done
done
done



