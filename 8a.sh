#8a.Write a shell script that determine the period for which as specified user is working on a
#system and display appropriate message.





h= who | grep "mca01"|tr -s " " | cut -d " " -f 4 | cut -c 1 - 2

m= who | grep "mca06" | tr -s  " " | cut -d  " " -f 4 | cut -c 4-5

ch= date + %H
ch= date + %M
