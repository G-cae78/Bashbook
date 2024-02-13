#! /bin/bash

if [ $# -ne 1 ]; then
  echo "Invalid number of parameters"

else

     user=$1

     if [ -d "$user" ]; then
       echo "start_of_file"
       cat "$user/wall.txt"
       echo "end_of_file"
    
     else 
       echo "nok: user $user does not exist"
     fi
fi 
