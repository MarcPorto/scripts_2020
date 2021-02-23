# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Mostar els arguments rebuts línia a línia, tot numerànt-los.
#  $ prog arg1 arg2 arg3 [...]
# -------------------------------------
ERR_NARGS=1
num=1

if [ $# -lt 1 ]
then
  echo "Error: nº args"
  echo "Usage: prog arg1 arg2 ..."
  exit $ERR_NARGS
fi


for arg in $*
do
  echo "$num: $arg"
  ((num++))
done
