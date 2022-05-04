#11b. Write an awkscript to compute gross salary of an employee accordingly to rule given
#below.
#If basic salary < 10000 then HRA=15% of basic & DA=45% of basic.
#If basic salary is >=1000 then HRA=20% of basic & DA=50% of basic.

BEGIN{
FS="|"
print"EMPLOYEE DETAILS\n------------------"
print"\nSINO\tEId\tEname\t\t\tDesign\t\tBsal\tDA\tHRA\tGsal"
}

{
SN++
if($5<10000){
da=0.45*$5
hra=0.15*$5
}
else{
da=0.50*$5
hra=0.20*$5
}
gs=$5+da+hra
printf("\n%3d\t%4d\t%-20s\t%-10s\t%5d\t%5d\t%5d\t%5d",SN,$1,$2,$3,$5,da,hra,gs)
tbs+=$5
thra+=hra
tda+=da
tgs+=gs
}

END{
printf("\nTotalBsal:%d\nTotalDA:%d\nTotalHRA:%d\nTotalGsal:%d",tbs,tda,thra,tgs);
}


