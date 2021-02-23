# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
#  $ prog dir
# Rep un argument que es un directori, fa un ls del direcotri
# -------------------------------------

ERR_NARGS=1
ERR_NDIR=2


if [ $# -ne 1 ]
then
  echo "Error: nº args incorrecte"
  echo "Usage: programa dir"
  exit $ERR_NARGS
fi

dir=$1

if [ ! -d $dir ]
then
  echo "Error: No es un directori"
  echo "Usage: programa dir"
  exit $ERR_NDIR
fi

llista=$(ls $dir)
for arg in $llista
do
  if [ -d "$dir/$arg" ] # Validem si es un directori
  then
    echo "$arg: Es un directori"
  elif [ -h "$dir/$arg" ] # Validem si es un link
  then
    echo "$arg: Es un link"
  elif [ -f "$dir/$arg" ] # Validem si es un regular file
  then
    echo "$arg: Es un regular file"
  else  # Si no es cap dels anteriors
    echo "$arg: No s'ha pogut identificar $directori"
  fi
done

exit 0
