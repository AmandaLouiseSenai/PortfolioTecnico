#!/bin/bash

read -p "Digite um numero para ver sua tabuada: " x  #x=5


for i in $(seq 1 10)

do

        res[$i]=$(($x*$i)) #res[1]=5*1 // res[2]=5*2 // res[3]=5*3 ….. res[10]=5*10

done

echo ${res[@]}
