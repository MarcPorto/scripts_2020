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
status=0


if [ $# -lt 2 ]
then
  echo "Error: Nº arguments invalid"
  echo "Usage: prog file dir-desti"
  exit $ERR_NARGS
fi

dir_dest=${*: -1}

if [ ! -d $dir_dest ]
then
  echo "Error: $dir_dest no existeix"
  echo "Usage: prog file dir-desti"
  exit $ERR_NFILE
fi

for file in $*
do
  if [ ! -e $file ]
  then
    echo "Error: $file no existeix" >> /dev/stderr
    echo "Usage: prog file dir-desti"
    status=$ERR_NFILE
  else
    if [ ! $file == $dir_dest ]
    then
      cp $file $dir_dest
    fi
  fi
done
