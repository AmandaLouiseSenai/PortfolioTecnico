#!/bin/bash
var=$(cut -d":" -f3 /etc/passwd)
numero_bot=0
touch texto.txt
for i in $var
do
	if [[ $1 -lt 999 || $1 -gt 2000 ]]
	then
		e=$($1)
		ab=$(grep $e /etc/passwd)
		echo $ab > texto.txt
		c=$(cut -d":" -f1 texto.txt)
		echo $c
	fi
done 
rm -rf texto.txt
