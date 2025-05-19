#display special set of file in a range
if [ $# -le 2 ]
then 
echo "syntax is <$0><files><range..>"
exit 1
fi
n1=$1
n2=$2
shift
shift
n3=`expr  $n2 - $n1 + 1`
while [ $# -ne 0 ]
do
echo "file:$1" 
head -$n2 $1 | tail -$n3
shift
done
exit 0 
