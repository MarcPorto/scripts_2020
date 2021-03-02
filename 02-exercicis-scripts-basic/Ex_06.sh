# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Fer un programa que rep com a arguments noms de dies de la setmana i mostra  quants dies eren laborables i quants festius. Si l’argument no és un dia de la setmana genera un error per stderr.
#
#  $ prog dilluns divendres dilluns dimarts kakota dissabte sunday
# -------------------------------------
ERR_NARGS=1
ERR_NDIA=2
status=0
USAGE="Usage: dia [...]"


if [ $# -lt 1 ]
then
  echo "Error: nº args"
  echo $USAGE
  exit $ERR_NARGS
fi

contador_lab=0
contador_fest=0

for i in $*
do
  case $i in
    "dilluns"|"dimarts"|"dimecres"|"divendres"|"dissabte")
      ((contador_lab++))
      ;;
    "diumenge")
      ((contador_fest++))
      ;;
    *)
      echo "Error: $i no s'ha pogut identificar com a dia vàlid" >> /dev/stderr
      status=$ERR_NDIA
      ;;
  esac
done

echo "Hi ha $contador_fest dies festius, hi ha $contador_lab dies laborals"
