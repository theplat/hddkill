#!/usr/bin/env bash

for n in `ls /dev/sd[a-z]`
do
echo "killing $n"
sudo dd if=/dev/urandom of=$n bs=8M status=progress
done
