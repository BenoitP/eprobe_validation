#!/bin/bash

code=""
for p in $(ls /bin); do
   pcode=$(objdump -d /bin/$p -j ".text" | awk -F '\t' '{ print $3 }' | sed -e "s/-*0x[0-9a-f]*/0x0/g" -e "s/%xmm[0-9][0-9]*/%xmm0/g" -e "s/%[a-z][px]/%ax/g" -e "s/%[a-z]s\([\b,]\)/%fs\1/g" -e "s/%r[0-9][0-9]*/%r0/g" -e "s/%r[a-z][px]/%rax/g" -e "s/%r[a-z]i/%rdi/g" -e "s/%e[a-z][xp]/%eax/g" -e "s/%e[a-z]i/%edi/g" -e "s/[0-9a-f]* </0 </" -e "s/<.*>//" -e "s/[ \t]* #.*$//" -e "/^[[:space:]]*$/d")
   code="${code} ${pcode}"
done

echo "$code" | sort | uniq -c | sort -g -r | sed -e "s/^[[:space:]]*//" -e "s/[[:space:]][[:space:]]*/;/"
