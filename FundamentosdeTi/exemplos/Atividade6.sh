#!/bin/bash
soma=0
maior=0
for i in $(seq 1 15)
do
       echo "o preco do $i produto e:"
       read val
       if [ $val -gt $maior ]
       then
           maior=$val
       fi
       soma=$((soma+i))
done
media=$(bc <<< "scale=2;&soma/15")
echo "A media dos precos e: $media"
echo "O maior valor e: $maior"
