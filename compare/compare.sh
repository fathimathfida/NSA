#shell script to compare two files if the file are identitical delete one
if [ $# -gt 2 -o $# -eq 1 ]
then
echo ""Syntax Error.\nSyntax --> $0 [filename] [filename]
exit
fi
if [ $# -eq 0 ]
then
echo "Enter a file name :: "
read a
echo "Enter another file name :: "
read b
else
a=$1
b=$2
fi
cmp $a $b
if [ $? -eq 0 ]
then
rm $b
echo "Removed duplicate file"
else
echo "No duplicate file exists"
fi


output
--------
ksb@ksb-ThinkCentre-Edge72:~/nasa/compare$ sh compare.sh a1 a2
a1 a2 differ: byte 2, line 1
No duplicate file exists
ksb@ksb-ThinkCentre-Edge72:~/nasa/compare$ sh compare.sh 
Enter a file name :: 
a1
Enter another file name :: 
a1
Removed duplicate file
ksb@ksb-ThinkCentre-Edge72:~/nasa/compare$ 




