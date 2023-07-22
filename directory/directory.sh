#display directory in window style
if [ $# -ne 0 ]
then
echo "\n\nDirectory of pwd \n"
exit 1
fi
for f in *
do
fdatetime=`date -r $f "+ %d -%m -%Y %H:%m %s "`
if [ -d $f ]
then
echo "$f\t\t<DIR><\t$fdatetime"
else
fsize=`cat $f | wc -c`
echo "$f\t\t$fsize\t$fdatetime"
fi
done
exit 0 

output
------
ksb@ksb-ThinkCentre-Edge72:~/nasa/directory$ vi directory.sh
ksb@ksb-ThinkCentre-Edge72:~/nasa/directory$ sh directory.sh
a1		<DIR><	 20 -07 -2023 10:42:26
a3		<DIR><	 20 -07 -2023 10:42:52
directory.sh		285	 22 -07 -2023 12:03:58
f8		18	 20 -07 -2023 10:47:25
f9		22	 20 -07 -2023 10:46:16
ksb@ksb-ThinkCentre-Edge72:~/nasa/directory$ 








