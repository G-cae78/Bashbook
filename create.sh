
#! /bin/bash


if [ $# -ne 1 ]; then
echo  "No identifier Provided"
exit 2
fi

id=$1

if [ -d "$id" ]; then
   echo "nok: user already exists"

else
  mkdir -p $id
  echo "ok: User created!"

  touch "$id/friends.txt"
  touch "$id/wall.txt"
  echo "Wall and friends file created for $id"
  
fi 

 


