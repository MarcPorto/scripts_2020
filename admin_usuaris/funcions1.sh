#! /bin/bash
# isx39478173

# crea escola
function creaEscola(){
  #escola="a b c d"
  #for clase in $escola
  for clase in $*
  do
	creaClasse $clase
  done
}

# crea clase

function creaClasse(){
  clase=$1
  PASSWD="alum"
  llista_users=$(echo ${clase}{01..02})
#  llista_users=$(echo "$clase"{00..05})
  for user in $llista_users
  do
#    useradd $user
    echo "$user:$PASSWD" # | chpasswd
#    chpasswd < file
#    echo "alum" | passwd --stdin $user &> /dev/null
  done
}

# showAllGroups

function showAllGroups(){
  llista_gids=$(cut -d: -f4 /etc/passwd | sort -n | uniq)
  for gid in $llista_gids
  do
    count=$(grep "^[^:]*:[^:]*:[^:]*:$gid:" /etc/passwd | wc -l)

    if [ $count -ge 2 ];
    then
      gname=$(grep "^[^:]*:[^:]*:$gid:" /etc/group | cut -d: -f1)
      echo "$gname($gid):$count"
      grep "^[^:]*:[^:]*:[^:]*:$gid:" /etc/passwd | sort | cut -d: -f1,3,7 | sed -r 's/^(.*)$/\t\1/'
    fi
  done
  return 0
}


# Ex 1 showUser login

#function showuserlogin() {
#	ERR_NARGS=1
#	ERR_LOGIN=2
#	if [ $# -ne 1 ];
#	then
#	  echo "Error: nº args incorrecte"
#	  echo "Usage: showuser login"
#	  return $ERR_NARGS
#	fi
#
#	linea=$(grep "^$1:" /etc/passwd)
#
#	if [ $? -ne 0 ];
#	then
#	  echo "Error: login incorrecte"
#	  echo "Usage: showuser login"
#	  return $ERR_LOGIN
#	fi
#
#	login=$(echo $linea | cut -d: -f1)
#	passwd=$(echo $linea | cut -d: -f2)
#	uid=$(echo $linea | cut -d: -f3)
#	gid=$(echo $linea | cut -d: -f4)
#	gecos=$(echo $linea | cut -d: -f5)
#	home_dir=$(echo $linea | cut -d: -f6)
#	shell=$(echo $linea | cut -d: -f7)
#}
