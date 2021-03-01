# !/bin/bash
# @edt ASIX M01-ISO
# Febrer 2021
# Processar línia a línia l’entrada estàndard, si la línia té més de 60 caràcters la mostra, si no no.
#  $ prog
# -------------------------------------

while read -r linea
do
	num_chars=$(echo $linea | wc -m)
	num_chars=$(($num_chars-1))
	if [ $num_chars -ge 60 ]
	then
	  echo "$linea"
	fi
done

exit 0
