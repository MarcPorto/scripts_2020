# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
#  $ prog [ -a file -b -c -d num -e ] arg[...]
#
#  Mostrar la llista de opcions i la llista d’arguments, el valor
#  de file i de num. Fer un bucle per tots els elements, amb un case
#  acumular les opcions a opcions i els arguments a arguments i salvar
#  el valor dels elements file i num. Pista: usar shift.
#
# -------------------------------------

opcions=""
args=""
file=""
num=""

while [ -n "$1" ]
do
  case $1 in
    -[bce])
      opcions="$opcions $1"
      ;;
    "-a")
      	file=$2
      	shift
      ;;
    "-d")
      num=$2
      shift
      ;;
    *)
      args="$args $1"
      ;;
  esac
  shift
done

echo -e "$opcions \n $args"
echo -e "File: $file \n Num: $num"


exit 0
