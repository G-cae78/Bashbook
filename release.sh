#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <mutex-name>" >&2
  exit 1
fi

lock="$1"

# Release the lock by removing the lock file
rm "$lock"
exit 0


