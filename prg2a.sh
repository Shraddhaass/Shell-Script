echo -n "Enter file name 1:"
read f1
if [ -e $f1 ]
then
set -- `ls -ld $f1`
f1perm=$1
else
echo "file does not exit"
exit
fi
echo -n "Enter a file name2:"
read f2
if [ -e $f2 ]
then
set -- `ls -ld $f2`
f2perm=$1
else
echo "File does not exit"
exit
fi
if [ $f1perm = $f2perm ]
then
echo "File permmision are identical"
echo "Permission is $f1perm"
exit
else
echo "File permisssion are not identical"
echo "f1 permission is $f1perm"
echo "f2 permission is $f2perm"
fi
