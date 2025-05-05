#copy file in pairs
if [ $# -lt 2 ]
then
echo "syntax is $0 <file1><file2>"
exit 1
fi
r=`expr $# % 2 `
if [ $r -ne 0 ]
then
echo "file name are not in pairs"
exit1
fi
while [ $# -ne 0 ] 
do
cp $1 $2
echo " copied '$1' to '$2' "
shift
shift
done
exit 0
