#! /bin/bash
# @edt ASIX-M01 Curs 2020-2021
# febrer 2021
# Descripcio: processar nota a nota i
#	- rep 1 o més arguments
#	- per cada nota [0-10]
#	- indicar si suspès, aprovat, notable o excel·lent
# Synopsis:
# 	prog notes[...]
# ---------------------------------------------------------


# prog notes[...]
#	- rep 1 o més arguments
#	- per cada nota [0-10]
#	- per cada nota dir si és suspès, aprovat, notable, excel·lent (XIXA)

ERR_NARGS=1
ERR_NOTA=2

# 1) Validar numero d'arguments (if)

if [ $# -eq 0 ]
then
  echo "ERROR: nums args incorrecte"
  echo "USAGE: $0 nota[...]"
  exit $ERR_NARGS
fi

# 2) Validar nota

for elem in $*
do
  if ! [ $elem -ge 0 -a $elem -le 10 ]
  then
    echo "ERROR: nota fora de rang" >> /dev/stderr
  elif [ $elem -lt 5 ]
  then
    echo "Suspes"
  elif [ $elem -le 6 ]
  then
    echo "Aprovat"
  elif [ $elem -le 8 ]
  then
    echo "Notable"
  else
    echo "Excelent"
  fi
done
