# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# llistar el direcotri si existeix + manual d'ajuda -h
#  $ prog arg (dir o -h)
# -------------------------------------
ERR_NARGS=1
ERR_NODIR=2

# Validar que hi ha un argument
if [ $# -ne 1 ]
then
    echo "Error: nºarguments incorrecte"
    echo "Usage: $0 directori"
    exit $ERR_NARGS
fi

directori=$1
# Validar si l'argument es -h
if [ $directori = "-h" ]
then
    echo "Manual / Ajuda"
    echo "Usage: $0 direcotiri"
    exit 0
fi

# validar si es directori
if ! [ -d $directori ]
then
    echo "Error: $directori no es un directori"
    echo "Usage: $0 directori"
    exit $ERR_NODIR
fi

ls $directori
exit 0
