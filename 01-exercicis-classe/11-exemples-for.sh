#! /bin/bash
# @edt ASIX-M01 Curs 2020-2021
# febrer 2021
# Descripcio: expemples bucle for
# ------------------------------------

# for war in llista-de-valors
# do
#     accions
# done
# $* $@ es diferencien que "$@" s'expandeix igualment, "$*" no

# 6) Llistat numerats tots els logins
pos=1
llista_noms=$(cut -f1 -d: cat /etc/passwd)
for elem in $llista_noms
do
    echo "$pos: $elem"
    pos=$((pos+1))
done

exit 0


# 5) Llistat de noms del direcotri actiu numerat línia a línia
pos=1
llista_noms=$(ls)
for elem in $llista_noms
do
    echo "$pos: $elem"
    ((pos++))
done

exit 0

# 4) Llistar els arguments numerats
pos=1
for nom in $*
do 
    echo "$nom -- $pos"
    pos=$((pos+1))
done

exit 0

# 3) Iterar per la llista de noms de fitxers que genera ls
llista_noms=$(ls .)
for elem in $llista_noms
do
    echo $elem
done

exit 0

# 2b) Iterar per acda argument rebut
for nom in "$@"
do
    echo $nom
done

exit 0


# 2a) Iterar per acda argument rebut
for nom in $*
do
    echo $nom
done

exit 0


# 1b) Iterar una llista de noms
for nom in "pere marta anna ramon"
do
    echo $nom
done

exit 0

# 1a) Iterar una llista de noms
for nom in "pere" "marta" "anna" "ramon"
do
    echo $nom
done

exit 0
