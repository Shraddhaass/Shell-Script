if [ $# -eq 1 ]
then
   grep $1 /etc/passwd >ud
   if [ $? -eq 0 ]
   then
   echo "user exist"
   h=`cut -d ":" -f 6 ud`
   echo "Home directory of $1 is $h"
   else
   echo "user not defined"
   fi
   else
   echo "Enter login/user name"
   fi
