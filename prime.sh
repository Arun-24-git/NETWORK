#find prime number
if [ $# -gt 1 ]
then
echo "Syntax is <$0><$n>"
exit 1
fi
num=$1
if [ $num -eq 1 ]
then
echo "$num is not prime number"
exit 0
fi
i=2
while [ $((i*i)) -le "$num" ]
do
if [ $((num % i))  -eq 0 ];
then
echo "$num is not prime number"
exit 0 
fi
i=$((i + 1 ))
done
echo "$num is prime number"
