# 1r) Validem arguments
	-error: missatge error
		mostrar usage
		exit !0
condicions:
	test $var -eq 5
	[ $var -eq 5 ] --> ull! oju!! l'espai abans i despres [  ]
		       --> malament [$var -eq 5]
				    [ $var -eq 5]
				    [$var -eq 5 ]
		        --> oju!	edat=12 (ok)
					edat = 12 (12) (error)
					edat= 12 (error)
					edat =12 (error)

# -eq --> =
# -ne --> (<> !=)
# -lt --> <
# -le --> <=
# -gt --> >
# -ge --> >=
# ! --> not

# Operador binari: 2 + 4, 4 * 7, 45 -gt 12
# operador unari: -3, +6, -2 + 4 = 2
# operador unari: -3, +6, 2 + 4 = 6

condicionals:
	if [ condició ]
	then
	    ...accions... (2 o 4 espais indentat, no mesa)
	elif [ condició ]
	then
	    ...accions...
	else
	    ...accions...
	fi
