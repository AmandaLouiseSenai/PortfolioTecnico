#!/bin/bash

PARAM1=$1

# ! NOT (NAO)
# -e Verifica se existe
if [ ! -e $PARAM1 ];
then
echo "Arquivo nao existe"
# -f Verifica se eh arquivo.
# -a Logica AND (E)
# -s Verifica se o arquivo é maior que zero
elif [ -f $PARAM1 -a -s $PARAM1 ]
then
echo "Voce informou um arquivo e ele nao esta vazio."
elif [ ! -f $PARAM1 ]
then
echo "O que voce informou nao eh um arquivo!"
else
echo "Voce informou um arquivo e ele esta vazio."
fi
