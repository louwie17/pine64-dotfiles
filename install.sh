#!/bin/sh

if [ `whoami` = root ]
then
  echo 'Please execute the script as a normal user.'
  exit
fi

sudo apt-get install tmux
