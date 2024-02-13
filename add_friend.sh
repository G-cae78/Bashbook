#! /bin/bash

if [ $# -ne 2 ]; then
  echo "incorrect number of parameters"
  exit 1
fi

id="$1"
friend="$2"

if [ ! -d "$id" ]; then
  echo "nok:User '$id' doesn't exist"
  exit 1
fi

if [ ! -d "$friend" ]; then
  echo "nok:$friend doesn't exist"
  exit 1
fi

if grep -q "$friend" "$id/friends.txt" > /dev/null; then
  echo "nok: $friend is already a friend"
else
  echo "ok: New friend added: $friend" >> "$id/friends.txt"
  echo "friend added successfully"
fi
