#!/bin/bash
listFiles()
{
	for file in `ls $1 -a`;
	do 
		
		if [ -d "$1/$file" ] && [ "$file" != "." ] && [ "$file" != ".." ]; then
			if [ "${file}" = ".git" ]; then
				echo rm $1/$file
				rm $1/$file -rf
			else
				listFiles "$1/$file"
			fi
		fi
	done
}
for file in `ls $PWD -a`;
do
	if [ -d "$PWD/$file" ] && [ "$file" != "." ] && [ "$file" != ".." ] && [ "$file" != ".git" ]; then
		listFiles $PWD/$file
	fi
done

