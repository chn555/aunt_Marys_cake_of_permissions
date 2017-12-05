#!/bin/bash

if [ $UID -ne 1000 ] ;then
	echo "only chn555 can run this file, fuck off"
       exit
fi       

read -p "enter user name
" uname

fileno=$( find / -user $uname 2>/dev/null | wc -l  )
hiddenno=$( find / -name ".*" 2>/dev/null | wc -l )
echo "$fileno files under root belong to you"

sleep 1
echo "$hiddenno hidden files under root"
