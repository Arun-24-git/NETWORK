# find max of three number
if [ $# -ne 3 ]
then
echo "syntax is <$0>,<$n1>,<n2>"
exit 1
fi
a=$1
b=$2
c=$3
if [ $a -gt $b -a $a -gt $c ]
then
echo "maximum is $a"
elif [ $b -gt $a -a $b -gt $c ]
then
echo "maximum is $b"
else
echo "maximum is $c"
fi
~              
