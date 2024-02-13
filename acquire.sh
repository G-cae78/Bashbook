#! /bin/bash 

#!/bin/bash

if [ -z "$1" ]; then
   echo "Usage: $0 <mutex-name>" >&2
   exit 1
fi

lock="$1"

# Check if the lock file already exists
if [ -e "$lock" ]; then
   echo "Error: Mutex '$lock' is already acquired." >&2
   exit 1
else
   # The link (ln) system call is supposed to be atomic on a local file system
   while ! ln "$0" "$lock" 2>/dev/null; do
      sleep 1
   done 
   exit 0
fi

