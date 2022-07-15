#!/bin/bash

for n in `ls /dev/sd[a-z]`
do
for x in `seq 7`
do
echo "killing $n pass $x"
sudo dd if=/dev/urandom of=$n
done
done
