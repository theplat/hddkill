#!/usr/bin/env bash

if [ -z "$1" ]
then
  echo "Quitting, you didnt specify a device"
  return
fi

DEVICE=$1
PASS=$(tr -cd '[:alnum:]' < /dev/urandom | head -c128)
sudo openssl enc -aes-256-ctr -pbkdf2 -iter 10000 -pass pass:"$PASS" -nosalt </dev/zero | sudo dd obs=64K ibs=4K of=$DEVICE oflag=direct status=progress
sudo dd if=/dev/zero of=$DEVICE bs=1M status=progress
PASS="12345"
