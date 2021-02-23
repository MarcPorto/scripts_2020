# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# llistar el direcotri si existeix
#  $ prog dir
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

# validar si es directori
directori=$1
if ! [ -d $directori ]
then
    echo "Error: $directori no es un directori"
    echo "Usage: $0 directori"
    exit $ERR_NODIR
fi

ls $directori
exit 0
