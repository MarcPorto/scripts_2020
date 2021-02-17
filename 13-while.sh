#! /bin/bash
# @edt ASIX-M01 Curs 2020-2021
# febrer 2021
# Descricio: exemples bucle while
# ----------------------------------------

# while[ cond ]
# do
#   acciones
# done


# 3) mostrar els arguments
while [ $# -gt 0 ]
do
  echo "$#: $*"
  shift
done

exit 0

# 2) mostrar numeros del n al 0
num=$1
while [ $num -ge 0 ]
do
  echo $num
  ((num--))
done

exit 0

# 1) mostrar numeros del 1 al 10
num=1

while [ $num -le 10 ]
do
  echo $num
  ((num++))
done
