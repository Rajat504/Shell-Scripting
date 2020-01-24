echo "enter the harmonic number"
H=1 
read n
for ((i=1;i<=$n;i++))
do
echo " H "+" 1/$i "
a=$( echo "$i" "$a"| awk '{print s2+(1/$1)}')
done
echo "${a}"
