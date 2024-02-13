#! /bin/bash

while true; do
   #do something
   case "$request" in 
      create)
        #do something
      if [ ! -z "$args" ]; then
           ./create.sh "$args"
     else
         echo"nok: bad request"
     fi
           ;;
      add)
       #do something
      if [ ! -z "$args" ]; then
           ./add_friends.sh "$args"
     else
         echo"nok: bad request"
     fi
        ;;
     post)
       #do something
       if [ ! -z "$args" ]; then
           ./post_messages.sh "$args"
     else
         echo"nok: bad request"
     fi 
       ;;
     display)
       #do something
      if [ ! -z "$args" ]; then
           ./display_wall.sh "$args"
     else
         echo"nok: bad request"
     fi
       ;;
     *)
        echo "Accepted \commands: {create|add|post|display}"
       exit 1
done
