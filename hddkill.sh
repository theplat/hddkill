#!/bin/bash

for n in `ls /dev/sd[a-z]`
do
echo "killing $n"
sudo dd if=/dev/urandom of=$n 
done
