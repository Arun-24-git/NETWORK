if [ $# -ne 3 ]
then echo "syntax is <$0>,<$1>,<$2>,<$3>"
exit 1
fi

a=$1
b=$2
c=$3
if [ $a -gt $c ]
then 
max=$a
a=$c
c=$max
fi
if [ $b -gt $c ]
then
max=$b
b=$c
c=$max
fi
if [ `expr $a + $b` -gt $c ]
then 
echo "triangle can be formed"
else
echo " triangle cannot be formed"
exit 1
fi
if [ $a -eq $b -a $b -eq $c -a $c -eq $a ]
then
echo "triangle is equilatoral"
fi
if [ $a -eq $b -o $b -eq $c -o $c -eq $a ]
then 
echo "triangle is isoleses"
fi
if [ `expr $a \* $a + $b \* $b ` -eq `expr $c \* $c` ]
then
echo "triangle is right angled"
fi
