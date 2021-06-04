#!/bin/bash
res-$((%1*$2))
echo $1 x $2 é igual a $res
echo $1 x $2 é igual a %res >> $3
