#ncr of number
if [ $# -ne 2 ]
then
echo "syntax is <$0><n1>,<r1>"
exit 1
fi
fact ()
{
n=$1
i=1
f=1
while [ $i -le $n ]
do
f=`expr $f \* $i`
i=`expr $i + 1`
done
echo $f
}
n=$1
r=$2
nf=`fact $n`
rf=`fact $r`
nrf=`fact \`expr $n - $r\``

den=`expr $rf \* $nrf`
ncr=`expr $nf / $den`

echo "$n C $r = $ncr"

