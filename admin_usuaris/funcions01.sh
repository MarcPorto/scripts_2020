#! /bin/bash
# Exemple de funcions

# Validar re 1 arg
# validar existeix usuari
# mostrar camp a camp

function showuser(){
	if [ $# -ne 1 ];
	then
	    echo "Error: nºargs"
	    echo "Usage: prog arg"
	    return 0
	fi
	
	contador=1
	linea=$(grep "^$1:" /etc/passwd)

	if [ $? -eq 0 ];
	then
	    echo "Login:    $(echo $linea | cut -d: -f1)"
	    echo "Password: $(echo $linea | cut -d: -f2)"
	    echo "UID:      $(echo $linea | cut -d: -f3)"
	    echo "GID:      $(echo $linea | cut -d: -f4)"
	    echo "GECOS:    $(echo $linea | cut -d: -f5)"
	    echo "HomeDir:  $(echo $linea | cut -d: -f6)"
	    echo "Shell:    $(echo $linea | cut -d: -f7)"
#	    Fet amb un while que numera registre per registre
#	    while [ $contador -le 7 ]
#	    do
#    	      echo "$contador: $(echo $linea | cut -d: -f$contador)"
#	      contador=$(($contador+1))
#	    done
	else
	    echo "No existeix"
	fi

}


function suma() {
	echo "La suma es: $(($1+$2))"
	return 0
}

function dia(){
	date
}
