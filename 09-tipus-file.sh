
# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# llistar el direcotri si existeix + manual d'ajuda -h
#  $ prog arg (dir o -h)
# -------------------------------------
ERR_NARGS=1
ERR_NOFILE=2

# Validar que hi ha un argument
if [ $# -ne 1 ]
then
    echo "Error: nºarguments incorrecte"
    echo "Usage: $0 directori"
    exit $ERR_NARGS
fi

directori=$1

if [ -d $directori ]
then
    echo "Es un directori"
elif [ -L $directori ]
then
    echo "Es un link"
elif [ -f $directori ]
then
    echo "Es un regular file"
else
    echo "Error: No s'ha trobat el fitxer especificat"
    echo "Usage: $0 'direcotri,link o regular file'"
    exit $ERR_NOFILE
fi

exit 0
