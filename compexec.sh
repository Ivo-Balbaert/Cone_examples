#!/bin/bash
# be sure to chmod a+x ./compexec.sh
# then run it with: ./compexec.sh abc.cone
# time it with: time ./compexec.sh abc.cone
echo "Processing $1" 
conec $1
name=$(echo "$1" | cut -f 1 -d '.')
gcc stdio.o "$name.o" -no-pie -o $name
echo "Output:"
./"$name"
