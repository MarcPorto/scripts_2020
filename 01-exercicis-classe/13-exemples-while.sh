#! /bin/bash
# @edt ASIX-M01 Curs 2020-2021
# febrer 2021
# Descricio: exemples bucle while
#----------------------------------------

# 9) Mostrar entrada standard numerada i amb mayuscules

num=1
while read -r line
do
  echo "$num: $line" | tr [:lower:] [:upper:]
  ((num++))
done
exit 0

# 8.2) mostra stdin fins a token FI
read -r line
num=1
while [ "$line" != "FI" ]
do
  echo "$num: $line"
  read -r line
  ((num++))
done
exit 0


# 8) mostra stdin fins a token FI

num=1
while read -r line
do
  if [ "$line" = "FI" ]
  then
    exit 0
  fi
  echo "$num: $line"
  ((num++))
done

exit 0


# 7) numerar stdin liniaa a linia

num=1
while read -r line
do
  echo "$num: $line"
  ((num++))
done

exit 0

# Mostra la entrada estandard linia a linia
while read -r line
do
  echo $line
done

exit 0


# Mostrar per numero de arguments

num=1
while [ $# -gt 0 ]
do
  echo "$num: $1, $#, $*"
  num=$((num+1))
  shift
done

exit 0

# mostrar els arguments

num=1
while [ -n "$1" ]
do
  echo "$num: $1, $#, $*"
  num=$((num+1))
  shift
done

exit 0


# mostrar els arguments
while [ -n "$1" ]
do
  echo "$1 $#: $*"
  shift
done

exit 0

# comptador decrexeint del arg rebut [n-0]

MIN=0
num=$1
while [ $num -ge $MIN ]
do
  echo -n "$num, "
  ((num--))
done

exit 0


# while[ cond ]
# do
#   acciones
# done


# 3) mostrar els arguments
while [ $# -gt 0 ]
do
  echo "$#: $*"
  shift
done

exit 0

# 2) mostrar numeros del n al 0
num=$1
while [ $num -ge 0 ]
do
  echo $num
  ((num--))
done

exit 0

# 1) mostrar numeros del 1 al 10
num=1

while [ $num -le 10 ]
do
  echo $num
  ((num++))
done
