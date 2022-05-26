if [ $# -eq 1 ]
then 
user=`who | grep -wc $1 `
if [ $? -eq 0 ]
then
if ["$user"=`whoami` ]
then
currentHour=`date+ %H`
currentMinute=`date+ m`
currentUser=`whoami`
set --`who | grep $currentUser`
set --`$4 | tr ":" " "`
loginHour=$1
loginMinute=$2
hours=`expr $currentHour-$loginHour`
minutes=`expr $currentMinute-$loginMinute`
if [ $minutes -lt 0 ]
then
hours=`expr 60-$loginMinute`
minutes=`expr $loginMinute-$currentMinute`
fi
echo "The user `whoami` working time is $hour hours $minutes minutes"
else
echo "user not loggedin"
fi
else
echo "user doesn't exist"
fi
fi
