#!/bin/bash

dir=$(pwd)
files=$(ls -a | grep -E "^\..*")
for file in $files;do
	if [[ -f $file ]];then
		ln -nfs "~/$file" "pwd/$file"
		source "~/$file"
	fi
done;
