#10a. Write an awkscript that accepts date argument in the form of dd-mm-yy and display it in
#the form month, day and year. The script should check the validity of the argument and in the
#case of error, display a suitable message.

BEGIN{
OFS=" "
}

{
split($0,date,"-")

if(date[2]>=1 && date[2]<=12){

if(date[2]==1 && date[1]>=1 && date[1]<=31){
print "January",date[1],date[3]
}

else if(date[2]==2 && date[1]>=1 && date[1]<=29){
print "February",date[1],date[3]
}

else if(date[2]==3 && date[1]>=1 && date[1]<=31){
print "March",date[1],date[3]
}

else if(date[2]==4 && date[1]>=1 && date[1]<=30){
print "April",date[1],date[3]
}

else if(date[2]==5 && date[1]>=1 && date[1]<=31){
print "May",date[1],date[3]
}

else if(date[2]==6 && date[1]>=1 && date[1]<=30){
print "June",date[1],date[3]
}

else if(date[2]==7 && date[1]>=1 && date[1]<=31){
print "July",date[1],date[3]
}

else if(date[2]==8 && date[1]>=1 && date[1]<=31){
print "August",date[1],date[3]
}

else if(date[2]==9 && date[1]>=1 && date[1]<=30){
print "September",date[1],date[3]
}

else if(date[2]==10 && date[1]>=1 && date[1]<=31){
print "October",date[1],date[3]
}

else if(date[2]==11 && date[1]>=1 && date[1]<=30){
print "November",date[1],date[3]
}

else if(date[2]==12 && date[1]>=1 && date[1]<=31){
print "December",date[1],date[3]
}

else
print "Invalid date"
}
else
print "Invalid month"
}




