
echo "Enter file name"
read filename
if [ -f $filename ]
then
	n= 10
	while read line
	do
		l=`expr length "$line"`
		if [ $l -le $n ]
		then
			echo $line
			else
			s= 1
			e= $n
			echo "`echo $line | cut -c $s-$e`"
			rcl= `expr $l - $e`
			while [ $rcl -ge $n ]
			do
				s= `expr $e + 1`
				e= `expr $e + $n`
				echo "`echo $line | cut -c $s - $e`"
				rcl= `expr $l - e`
			done
			s= `expr $e + 1`
			echo $line | cut -c $s-
		fi
	done < $filename
else
	echo "$filename no such file found"
fi
