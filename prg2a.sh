#Write a shell script that accepts two filenames as arguments, checks if the permissions for
#these files are identical and if the permissions are identical, output common permissions
#otherwise output each filename followed by its permissions.

echo -n "Enter file name 1:"
read f1
if [ -e $f1 ]
then
set -- `ls -ld $f1`
file1perm=$1
else
echo "file does not exit"
exit
fi
echo -n "Enter a file name2:"
read f2
if [ -e $f2 ]
then
set -- `ls -ld $f1`
file1perm=$1
else
echo "File does not exit"
exit
fi
if [ $file1perm = $file2perm ]
then
echo "File permmision are identical"
echo "Permission is $file1perm"
else
echo "File permisssion are not identical"
echo "$f1 permission is $file1perm"
echo "$f2 permission is $file2perm"
fi
