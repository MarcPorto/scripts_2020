#! /bin/bash
# @edt ASIX 2020 - 2021
# Exemples case
# ----------------------------
case $1 in
  "dl"|"dt"|"dc"|"dj"|"dv"|"ds")
    echo "es laboral"
    ;;
  "dm")
    echo "es festiu, aleluya"
    ;;
  *)
    echo "Error: es una altre cosa"
    ;;
esac

exit 0

# Exemples vocals consonants

case $1 in
  [aeiou])
    echo "es una vocal"
    ;;
  [bcd,f-h,j-n,p-t,v-z])  # Tambe podemfer [a-z] ja que es descarten les vocals a la part de adalt
    echo "es una conosonant"
    ;;
  *)
    echo "es una consonant"
    ;;
esac


exit 0

# Exemple noms

case $1 in
  "pere"|"pau"|"joan")
    echo "és un nen"
    ;;
  "marta"|"anna"|"julia")
    echo "es una nena"
    ;;
  *)
    echo "indefinit"
    ;;
esac
