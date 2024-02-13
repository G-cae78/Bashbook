#! /bin/bash
if [ $# -lt 3 ]; then
    echo "Invalid number of parameters"
    exit 1
fi

sender="$1"
receiver="$2"
message="${@:3}" #concatenate all characters starting from character 3

if [ -d "$sender" ]; then

	if [  -d "$receiver" ]; then

		if grep -q "$sender" "$receiver/friends.txt" >/dev/null; then

    		echo "$sender: $message" >> "$receiver/wall.txt"
    		echo "ok: Writing to $receiver 's wall now"

               else
		echo "nok: $sender is not a friend of $receiver"
             fi
	else
   		echo "nok: receiver $receiver doesn't have an account with us"
       fi
else
   echo "nok: sender $sender doesn't have an account with us"
fi





