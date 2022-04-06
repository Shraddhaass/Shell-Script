for fn in $*
do
 if [ $fn = $1 ]
 then
  continue
 fi
for w in `cat $1`
 do
   l= `grep -oiw  "$w" $fn | wc -l`
  echo "$w is $l type time $fn"
 done
done
