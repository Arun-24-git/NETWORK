#modify cp command 
if [ $# -ne 2 ]
then
echo "syntax is <$0>,<src filename>"
exit 1
fi
if [ ! -f $1 ]
then 
echo "$1 is not existing or not a ordering filee"
exit 2
fi
if [ -f $2 ]
then
echo "target file exists,overwrite it(y/n)"
read ans
if [ $ans = "n" ]
then 
exit 3
fi
fi
cp $1 $2
echo "file copied"



