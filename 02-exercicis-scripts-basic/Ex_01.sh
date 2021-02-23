# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Mostra l'entrada estàndard numerant línia a línia
#  $ prog
# -------------------------------------

num=1
while read -r linea
do
  echo "$num: $linea"
  ((num++))
done

exit 0
