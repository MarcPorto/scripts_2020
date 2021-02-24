# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
#  $ prog file dir-desti
# programa que mostri el nº arguments, la llista, el nom del programa, l'últim argument i tots els arguments menys l’últim. El difícil és identificar quin és l’últim argument.
#
# Llavors itera per la llista origen i si és file el copia al dirdestí.
# -------------------------------------

ERR_NARGS=1
ERR_NFILE=2
ERR_NDIR=3

if [ $# -ne 2 ]
then
  echo "Error: Nº arguments invalid"
  echo "Usage: prog file dir-desti"
  exit $ERR_NARGS
fi

file=$1
dir_dest=$2

if [ ! -e $file ]
then
  echo "Error: file no existeix"
  echo "Usage: prog file dir-desti"
  exit $ERR_NFILE
fi

if [ ! -d $dir_dest ]
then
  echo "Error: dir no existeix"
  echo "Usage: prog file dir-desti"
fi

cp $file $dir_desti
