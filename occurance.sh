#occurance of word in file
if [ $# -lt 2 ]
then
echo "systax is $0,<filename1>,[filename2...]"
exit 1
fi
word=$1
shift
count=0
while [ $# -ne 0 ]
do
for wd in $(cat "$1")
do 
if [ "$wd" = "$word" ]
then 
count=`expr $count + 1`
fi
done
shift
done
echo " number of occurance $count"
