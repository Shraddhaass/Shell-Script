#Write a shell script that get executed and display the message either "good morning" or "good Afternoon" or "good night"depending upon
# times at which user log in 
set -- `who`
u=$1
t=$4
set -- `echo $t | tr ":" " "`
h=$1
echo "User logged in: $h"
if [ $h -ge 4 ] && [ $h -lt 12 ]
then
echo "Good Morning Mr/ms $u"
elif [ $h -ge 12 ] && [ $h -lt 16 ]
then
echo "good afternoon Mr/Ms $u"
elif [ $h -ge 16 ] && [ $h -lt 19 ]
then
 echo "Good Evening $u"
 else
 echo "good night $u"
 fi
