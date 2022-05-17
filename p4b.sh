if [ "$2" != " " ]
then
cwd=`pwd`
cd $2
link=`ls -l $1 | tr -s " " | cut -d " " -f 2`
cd $cwd
else
link=`ls -l $1 | tr -s " " | cut -d " " -f 2`
fi
echo "Number of links of file $1:$link"
