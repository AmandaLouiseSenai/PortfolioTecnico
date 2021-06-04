#!/bin/bash
echo "digite um numero"
read x
          if [ $x -lt 0]
                 then
                  echo "esse numero e negativo"
                else [ $x -ge 0]
                  echo "esse numero e positivo"
                 fi
