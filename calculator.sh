# calculator
if [ $# -ne 3 ] 
then
echo "syntax is <$0>,<$1>,<$2>,<$3>"
else
case $2 in
+) sum=`expr $1 + $3`;;
-) sum=`expr $1 - $3`;;
x|X) sum=`expr $1 \* $3`;;
/) sum=`expr $1 / $3`;;
*)echo "invalid option"
esac
echo "sum iS $sum"
fi
