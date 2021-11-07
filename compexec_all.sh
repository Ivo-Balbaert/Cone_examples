#!/bin/bash
# be sure to chmod a+x ./compexec_all.sh
# then run it with: ./compexec_all.sh
# time it with: time ./compexec_all.sh
# stdio.o can be generated with the following command 
# in the Cone installation folder:
# gcc -c ./src/conestd/stdio.c

echo "Compiling, linking and executing all Cone programs:"
for file in *.cone
do 
    echo "-----------------------------------------------"
    echo "Processing $file" 
    conec $file
    name=$(echo "$file" | cut -f 1 -d '.')
    gcc stdio.o "$name.o" -no-pie -o $name
    echo "Output:"
    ./"$name"
done