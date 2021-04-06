#! /bin/bash
# isx39478173


# Ex 1 showUser login

function showuser login() {
	ERR_NARGS=1
	ERR_LOGIN=2
	if [ $# -ne 1 ];
	then
	  echo "Error: nº args incorrecte"
	  echo "Usage: showuser login"
	  return $ERR_NARGS
	fi

	linea=$(grep "^$1:" /etc/passwd)

	if [ $? -ne 0 ];
	then
	  echo "Error: login incorrecte"
	  echo "Usage: showuser login"
	  return $ERR_LOGIN
	fi

	login=$(echo $linea | cut -d: -f1)
	passwd=$(echo $linea | cut -d: -f2)
	uid=$(echo $linea | cut -d: -f3)
	gid=$(echo $linea | cut -d: -f4)
	gecos=$(echo $linea | cut -d: -f5)
	home_dir=$(echo $linea | cut -d: -f6)
	shell=$(echo $linea | cut -d: -f7)




}
