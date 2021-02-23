# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
#  $ bash 05-validar-nota.sh nota
# -------------------------------------
ERR_NARGS=1
ERR_VALOR=2

# Validar que hi ha un argument
if [ $# -ne 1 ]
then
    echo "Error: nºarguments incorrecte"
    echo "Usage: $0 nota"
    exit $ERR_NARGS
fi
nota=$1

# Validar que l'argument es un digit entre el 0-10
if ! [ $nota -ge 0 -a $nota -le 10 ]
then
    echo "Error: Valor incorrecte"
    echo "Usage: Valor entre 0-10"
    exit $ERR_VALOR
fi


# Mostrar si esta aprovat o suspes
if [ $nota -lt 5 ]
then
    echo "Suspes"
elif [ $nota -le 6 ]
then
    echo "Aprovat"
elif [ $nota -le 8 ]
then
    echo "Notable"
else
    echo "Excelent"
fi
exit 0
