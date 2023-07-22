# Counting number of occurance of a word in a set of files
if [ $# -eq 0 ]
then
echo "Syntax is <$0> <word> <file1> <file2> etc"
exit 1
fi
word=$1
shift
count=0
while [ $# -ne 0 ]
do 
for wd in `cat $1`
do
if [ $wd = $word ]
then
count=`expr $count + 1`
fi
done
shift
done
echo "Number of occurance of words = $count"
exit 0


output
--------

ksb@ksb-ThinkCentre-Edge72:~/nasa/occurance$ sh occurance.sh hlo a1 a2
Number of occurance of words = 2
ksb@ksb-ThinkCentre-Edge72:~/nasa/occurance$ sh occurance.sh hlo a1 a2
Number of occurance of words = 2
ksb@ksb-ThinkCentre-Edge72:~/nasa/occurance$ cat a1
hlo
how are you
ksb@ksb-ThinkCentre-Edge72:~/nasa/occurance$ cat a2
hlo
heloooooooooo
ksb@ksb-ThinkCentre-Edge72:~/nasa/occurance$ 








