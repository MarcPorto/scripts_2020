# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
#  $ prog dir
# Rep un argument que es un directori, fa un ls del direcotri
# -------------------------------------

ERR_NARGS=1
ERR_NDIR=2
status=0

if [ $# -le 1 ]
then
  echo "Error: nº args incorrecte"
  echo "Usage: programa dir"
  exit $ERR_NARGS
fi

dir=$1

for arg in $*
do
  if [ ! -d $arg ]
  then
    echo "Error: $arg: No es un directori" >> /dev/stderr
    status=$ERR_NDIR
  else
    llista=$(ls $arg)
    echo $arg
    for arg1 in $llista
    do
      ruta="$arg/$arg1"
      if [ -d $ruta ] # Validem si es un directori
      then
        echo -e "\t $ruta: Es un directori"
      elif [ -h $ruta ] # Validem si es un link
      then
        echo -e "\t $ruta: Es un link"
      elif [ -f $ruta ] # Validem si es un regular file
      then
        echo -e "\t $ruta: Es un regular file"
      else  # Si no es cap dels anteriors
        echo -e "\t $ruta: No s'ha pogut identificar $directori"
      fi
    done
  fi
done
exit $status
