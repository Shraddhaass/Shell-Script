if [ $# -eq 1 ]
then
if [ -d $1 ]
then
set -- `ls -Rl $1 | tr -s " " | grep "^-" | cut -d " " -f 5,9- | sort -n | tail -n 1`
echo "file name is:$2"
echo "file name is:$1"
exit
else
echo "Not directory"
exit
fi
else
echo "enter directory name"
fi
