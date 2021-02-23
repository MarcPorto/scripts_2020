# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Mostrar línia a línia l’entrada estàndard, retallant només els primers 50 caràcters.
#  $ prog
# -------------------------------------

while read -r linea
do
  echo "$linea" | cut -c 1-50
done

exit 0
