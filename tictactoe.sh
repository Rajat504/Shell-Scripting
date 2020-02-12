declare -a ar
use=0
p_c=0
ar=("-" "-" "-" "-" "-" "-" "-" "-" "-")
function print(){
clear
echo "_____________"
echo "| "${ar[0]}" | "${ar[1]}" | "${ar[2]}" |"
echo "_____________"
echo "| "${ar[3]}" | "${ar[4]}" | "${ar[5]}" |"
echo "_____________"
echo "| "${ar[6]}" | "${ar[7]}" | "${ar[8]}" |"
echo "_____________"
}
function user(){
echo "enter choice"
read choice
if [ "${ar[choice]}" = "x" -o "${ar[choice]}" = "o" ]
then
user
else
ar[$choice]="o"
use=$(($use+1))
fi
}
function pc_input(){
p=$(($RANDOM%9))
if [ "${ar[p]}" = "x" -o "${ar[p]}" = "o" ]
then
pc_input
else
ar[$p]="x"
p_c=$(($p_c+1))
fi
}

function win_digonal(){
if [ "${ar[0]}" = "x" -o "${ar[0]}" = "o" ] && [ "${ar[0]}" = "${ar[4]}" ] && [ "${ar[0]}" = "${ar[8]}" ]
then 
return 1
fi
if [ "${ar[2]}" = "x" -o "${ar[2]}" = "o" ] && [ "${ar[2]}" = "${ar[4]}" ] && [ "${ar[2]}" = "${ar[6]}" ]
then
return 1
fi
}

function win_row(){
if [ "${ar[0]}" = "x" -o "${ar[0]}" = "o" ] && [ "${ar[0]}" = "${ar[1]}" ] && [ "${ar[0]}" = "${ar[2]}" ]
then
return 1
fi
if [ "${ar[3]}" = "x" -o "${ar[3]}" = "o" ] && [ "${ar[3]}" = "${ar[4]}" ] && [ "${ar[3]}" = "${ar[5]}" ]
then
return 1
fi
if [ "${ar[6]}" = "x" -o "${ar[6]}" = "o" ] && [ "${ar[6]}" = "${ar[7]}" ] && [ "${ar[6]}" = "${ar[8]}" ]
then
return 1
fi
}

function win_colume(){
if [ "${ar[0]}" = "x" -o "${ar[0]}" = "o" ] && [ "${ar[0]}" = "${ar[3]}" ] && [ "${ar[0]}" = "${ar[6]}" ]
then
return 1
fi
if [ "${ar[1]}" = "x" -o "${ar[1]}" = "o" ] && [ "${ar[1]}" = "${ar[4]}" ] && [ "${ar[1]}" = "${ar[7]}" ]
then
return 1
fi
if [ "${ar[2]}" = "x" -o "${ar[2]}" = "o" ] && [ "${ar[2]}" = "${ar[5]}" ] && [ "${ar[2]}" = "${ar[8]}" ]
then
return 1
fi
}

function result(){
if [ $(($r)) -eq 1 -a $(($use)) -gt 2 ]
then
echo "user win"
exit
fi

if [ $(($c)) -eq 1 -a $(($p_c)) -gt 2 ]
then
echo "pc win"
exit
fi

if [ $(($r)) -eq 1 -o $(($c)) -eq 1 ] && [ $(($use)) -ge 4 -o $(($p_c)) -ge 4 ]
then
echo "no one win"
exit
fi
}

count=9
while [ $count -ge 0 ]
do
print
echo "user input"
user
print 
win_digonal
r=$?
result $r
win_row
r=$?
result $r
win_colume
r=$?
result $r
print
echo "pc input"
pc_input
print
win_digonal
c=$?
result $r
win_row
c=$?
result $r
win_colume
c=$?
result $r
print
count=$(($count-1))
done
