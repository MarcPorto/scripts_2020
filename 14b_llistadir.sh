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

if ! [ -d $dir ]
then
  echo "Error: No es un directori"
  echo "Usage: programa dir"
  exit $ERR_NDIR
fi

llista=$(ls $dir)
num=1
for arg in $llista
do
  echo "$num: $arg"
  ((num++))
done

exit 0
