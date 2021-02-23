# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Fer un programa que rep com a arguments números de més (un o més) i indica per a cada mes rebut quants dies té el més.
#  $ prog mes [...]
# -------------------------------------

ERR_NARGS=1
ERR_NMES=2
status=0
if [ $# -lt 1 ]
then
  echo "Error: nº args"
  echo "Usage: mes [...]"
  exit $ERR_NARGS
fi

for mes in $*
do
  if ! [ $mes -ge 1 -a $mes -le 12 ]
  then
    echo "Error: $mes no es un numero de mes valid" >> /dev/stderr
    status=$ERR_NMES
  else
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
  fi
done
