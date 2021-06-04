#!/bin/bash
echo "Qual e o ano atual?"
           read ano_atual
echo "Qual ano voce nasceu?"
            read ano_nasceu
 
ano_18=$((ano-atual-18))
ano-16=$((ano_atual-16))
 
if [ $ano_nasceu -le $ano_18 ]
then
              echo "voce deve votar!"
elif [ $ano_nasceu -le $ano_16 ]
              echo "voce pode votar!"
else
               echo "voce nao pode votar!"
fi
