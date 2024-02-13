#!/bin/bash

if [ $# -ne 1 ]; then
   echo "Invalid number of parameters"
   exit 1
fi

id="$1"

if [ ! -p "$id.pipe" ]; then
   mkfifo "$id.pipe"
fi

while true; do
   read -p "Enter a request (commands: create/add/post/display): " request

   # Sending the request to the server's pipe
   echo "$request" > server.pipe
   
   # Reading response from the client's pipe
   read serverresponse < $"id.pipe"


            # Displaying the server's response in a user-friendly way
            case "$serverresponse" in
               "ok: user created!")
                  echo "SUCCESS: user created!"
                  ;;
               "nok: user already exists")
                  echo "ERROR: user already exists"
                  ;;
               "start_of_file")
                  # Read and print the content of the user's wall
                  while IFS= read -r line && [ "$line" != "end_of_the_file" ]; do
                     echo "$line"
                  done
                  ;;
               *)
                  echo "Unknown response from server: $serverresponse"
                  ;;
   esac
done

 
