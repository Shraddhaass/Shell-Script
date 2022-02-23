#4a
for i in $*
do
if [ -f $i ]
then
echo "$i contents are ..."
cat $i | tr "[a-z]" "[A-Z]"
echo "_________________"
else
echo "$i file doesnt exist"
fi
done
