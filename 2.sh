#!/bin/bash

read -p "are you sure you want to make these changes?  [Y/n]
" sure

case $sure in
	""|y|yes|Y)
		echo "OK, continue"
		;;
	n|no|N|*)
		echo "OK, exiting"
		exit 1
		;;
	
esac
