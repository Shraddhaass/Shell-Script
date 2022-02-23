#Write a shell script that accept a path name and creates all the components in that path name as directories.

if [ $# -ne 0 ]
then
 p= `echo $1 | tr "/" " "`
      for i in $p
      do
      mkdir $i
      cd $i
      done
       echo "All directoris created"
       else
       echo "please enter the parameter"
   fi
        
