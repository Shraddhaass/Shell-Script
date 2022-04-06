echo -n "Enter the password"
read p1
echo -n "confirm the password"
stty -echo
read p2
stty echo
while [ "$p1" != "$p2" ]
do
 echo -n "password doesn't match re entered the password"
 stty -echo
 read p2
 stty echo
 done 
 clear
 echo "terminal locked"
echo -n "Enter password to unlock"
stty -echo
read p3
stty echo
 while [ "$p1" != "$p3" ]
 do
 clear
 echo "-------Termianl lock........."
  echo -n "password does't match r-entered the password"
stty -echo
  read p3
  stty echo
  done
  echo -n "......Terminal lock....."
  
