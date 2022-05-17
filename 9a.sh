if [ $# -eq 3 ]
then
	if [ -e $1 ]
	then
		if [ $2 -gt 0 -a $3 -gt 0 ]
		then
			l=`wc -l $1 | cut -d " " -f 1`
			if [ $2 -le $l -a $3 -le $l -a $3 -ge $2 ]
			then
				head -n $3 $1 | tail -n +$2
			else
				echo $2 and $3 should be less than total line and Ending line should be greater than Starting line
			fi
		else
			echo The $2 and $3 must be greater than zero 
		fi
	else
		echo Filename: $1 does not exist
	fi
else
	echo Enter Filename, Starting and ending line numbers
fi

#mca@mca-System-Product-Name:~/Desktop$ sh 9a.sh
#mca@mca-System-Product-Name:~/Desktop$ sh 9a.sh 3 4
#Enter Filename, Starting and ending line numbers
#mca@mca-System-Product-Name:~/Desktop$ sh 9a.sh hi.txt
#Enter Filename, Starting and ending line numbers
#mca@mca-System-Product-Name:~/Desktop$ sh 9a.sh hi.txt 3 4
#then
#the
#mca@mca-System-Product-Name:~/Desktop$ gedit 9a.sh
#mca@mca-System-Product-Name:~/Desktop$ sh 9a.sh hi.txt 4 3
#4 and 3 should be less than total line and Ending line should be greater than Starting line
#mca@mca-System-Product-Name:~/Desktop$ sh 9a.sh hi.txt 5
#Enter Filename, Starting and ending line numbers
#mca@mca-System-Product-Name:~/Desktop$ sh 9a.sh jo.txt 1 2
#Filename: jo.txt does not exist
#mca@mca-System-Product-Name:~/Desktop$ sh 9a.sh jo.txt 
#Enter Filename, Starting and ending line numbers
#mca@mca-System-Product-Name:~/Desktop$ sh 9a.sh jo.txt 90
#Enter Filename, Starting and ending line numbers
#mca@mca-System-Product-Name:~/Desktop$ sh 9a.sh jo.txt 90 222
#Filename: jo.txt does not exist
#mca@mca-System-Product-Name:~/Desktop$ 
#mca@mca-System-Product-Name:~/Desktop$ sh 9a.sh hi.txt 90 222
#90 and 222 should be less than total line and Ending line should be greater than Starting line
#mca@mca-System-Product-Name:~/Desktop$ 


