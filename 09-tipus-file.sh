
# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Dir si el argument introduit es un direcotri, un link o un regular file
#  $ prog arg (direcotri,link o regular file)
# -------------------------------------
ERR_NARGS=1
ERR_NOFILE=2

# Validar que hi ha un argument
if [ $# -ne 1 ]
then
    echo "Error: nºarguments incorrecte"
    echo "Usage: $0 arg (direcotri,link o regular file)"
    exit $ERR_NARGS
fi

directori=$1

if [ -d $directori ] # Validem si es un directori
then
    echo "Es un directori"
elif [ -L $directori ] # Validem si es un link
then
    echo "Es un link"
elif [ -f $directori ] # Validem si es un regular file
then
    echo "Es un regular file"
else  # Si no es cap dels anteriors
    echo "Error: No s'ha trobat el fitxer especificat"
    echo "Usage: $0 arg (direcotri,link o regular file)"
    exit $ERR_NOFILE
fi

exit 0
