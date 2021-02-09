# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
#  $ bash 05-validar-nota.sh nota
# -------------------------------------
ERR_NARGS=1

# Validar que hi ha un argument
if [ $# -ne 1 ]
then
    echo "Error: nºarguments incorrecte"
    echo "Usage: $0 directori"
    exit $ERR_NARGS
fi
directori=$1

if [ $directori -d ]
