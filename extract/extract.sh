#Extract a set of lines from set of files
if [ $# -le 2 ]
then
echo "syntax is <$0> <range> <files....>"
exit 1
fi
n1=$1
n2=$2
shift
shift
n3=`expr $n2 - $n1 + 1`
while [ $# -ne 0 ] 
do
echo "Range of file from $1 :"
head -$n2 $1 | tail -$n3
shift
done
exit 0
 

output

ksb@ksb-ThinkCentre-Edge72:~/nasa/extract$ sh extract.sh 2 7 extract.sh
Range of file from extract.sh :
if [ $# -le 2 ]
then
echo "syntax is <$0> <range> <files....>"
exit 1
fi
n1=$1
ksb@ksb-ThinkCentre-Edge72:~/nasa/extract$ 

