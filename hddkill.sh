#!/bin/bash

for n in `ls /dev/sd*`
do
echo "killing $n"
sudo dd if=/dev/urandom of=$n bs=8b conv=notrunc
done
