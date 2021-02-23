#! /bin/bash
#@edt ASIX 2020 - 2021
# Dies mes
#   programa arg1
# ------------------------------
# prog mes[...]
#   validar 1 o més arguments
#   per cada mes validar mes [1,12]
#   per cdad mes diu el número de dies


ERR_NARGS=1
ERR_NORANG=2

# Validem numero de arguments

if [ $# -eq 0 ]
then
  echo "Error: nº arguments incorrecte"
  echo "Usage: programa arg1 (entre 1 i 12)"
  exit $ERR_NARGS
fi

mes=$1

# Validem si esta entre 1 i 12

if ! [ $mes -ge 1 -a $mes -le 12 ]
then
  echo "Error: el valor introduit no esta dins del rang permes"
  echo "Usage: programa arg1 (entre 1 i 12)"
  exit $ERR_NORANG
fi

# Programa

case $mes in
  "1"|"3"|"5"|"7"|"8"|"10"|"12")
    echo "El mes $mes te 31 dies"
    ;;
  "2")
    echo "El mes $mes te 28 dies"
    ;;
  *)
    echo "El mes $mes te 30 dies"
esac

exit 0
