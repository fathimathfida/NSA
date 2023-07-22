#script to delete all lines containing word linux
if [ $# -ne 0 ]
then
echo "Syntax error.\nSyntax is <$0>"
exit
fi
echo "Enter the file name: "
read file
term=`tty`
exec < $file
while read line
do
echo $line | grep linux > file2
if [ $? -eq 0 ] 
then    
continue
fi      
echo $line >> file1
done
mv file1 $file
rm file2
exec < $term


output
--------
ksb@ksb-ThinkCentre-Edge72:~/nasa/delete$ cat f5
windows
linux
ubuntu

ksb@ksb-ThinkCentre-Edge72:~/nasa/delete$ sh delete.sh
Enter the file name: 
f5
ksb@ksb-ThinkCentre-Edge72:~/nasa/delete$ cat f5
windows
ubuntu

