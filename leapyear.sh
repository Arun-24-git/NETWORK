#program to find leap year

if [ $# -ne 1 ]
then
echo "syntax is $0 <year>"
fi
year=$1
if [ `expr $year % 400` -eq 0  ]
then
echo "$year is a leap year"
elif [ `expr $year % 100` -eq 0  ]
then
echo "$year is not leap year"
elif [ `expr $year % 4` -eq 0  ]
then 
echo "$year is a leap year"
else
echo "$year is not a leap year"
fi
