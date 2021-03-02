# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
#  $ prog nou_dir [...]
#
# -------------------------------------

ERR_NARGS=1
ERR_DIR=2
USAGE="Usage: prog nou_dir [...]"
status=0


if [ $# -lt 1 ]
then
  echo "Error: nº args"
  echo $USAGE
  exit $ERR_NARGS
fi

for i in $*
do
  mkdir -p $i &> /dev/null
  if [ $? -ne 0 ]
  then
    echo "Error: $i no s'ha pogut crear correctament" >> /dev/stderr
    status=$ERR_DIR
  else
    echo "$i s'ha creat correctament"
  fi
done

exit $status
