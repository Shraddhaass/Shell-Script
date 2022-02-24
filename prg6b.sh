#rite a shell script to list all the files in a directory whose filename is at least 10 characters.
#(use expr command to check the length).
for i in `ls`
do
f1=`expr length $i`
if [ $f1 -ge 0 ]
then
echo $i
fi
done

