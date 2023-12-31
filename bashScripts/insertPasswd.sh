#!/bin/bash

if [ -z "$1" ]
  then
	echo "Remember to supply an identifier"
	exit 1
fi

if [ -z "$2" ]
  then
	passwd=$(~/passwordManager/passgen)
	echo "$1		$passwd" >> ~/passwordManager/passwords
	echo $passwd | clip.exe
	echo "New password: $passwd"
	echo "Copied to clipboard."
else
	echo "$1		$2" >> ~/passwordManager/passwords
	echo "Password added."
fi
