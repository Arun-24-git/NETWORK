#display message from system using time

tm=$(date +%H)
if [ $tm -ge 5 -a $tm -le 12 ]
then
echo "good morning"
elif [ $tm -ge 12 -a $tm -le 15 ]
then
echo "good afternoon"
elif [ $tm -ge 16 -a $tm -le 18 ]
then
echo "good evening"
else
echo "good night"
fi 
