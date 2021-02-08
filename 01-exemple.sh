#! /bin/bash
# @edt ASIX-M01
# Febrer 2021
# Primer exemple script
# ---------------------------------------------
echo "Hello World"
echo "bond dia, avui plou"
nom="Ivan Martinez Medina"
edat=19
echo $nom $edat
echo -e "nom: $nom\n edat: $edat"
echo -e 'nom: $nom\n edat: $edat'
uname -a
uptime
echo $SHELL
echo $SHLVL
echo $((4*32))
echo $((edat*2))
#read data1 data2
#echo -e "$data1 \n $data2"
exit 1
