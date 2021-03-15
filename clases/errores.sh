#! /bin/bash
# Un programa que reciba arg1 [arg2 arg3] y si los argumentos son vocales diga "vocal" si es consonante diga "consonante" si no es ninguno diga "error recuperable"

if [ $# -lt 1 ]
then
  echo "Err"
  echo "Usa"
  exit 1
fi

for letra in $*
do
  case $letra in
    [aeiou] )
  	  echo "es vocal"
  	  ;;
    [bcd,f-h,j-n,p-t,v-z])
  	  echo "es consonant"
  	  ;;
    *)
  	  echo "Error" >> /dev/stderr
  	  ;;
  esac
done

exit 0
