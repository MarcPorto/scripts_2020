Conceptes tractats:
● Usuaris. Informació d’usuari i fitxers.
● Grups. Informació de grups i fitxers
● Password.Fitxers i polítiques de password.
● Administració d’usuaris.

1. Crear l’usuari user1 i observar els valors per defecte que pren de shell, home, uid, i
gid. Mostrar la línia amb la informació d’usuari del fitxer de comptes d’usuari. S’ha
creat algun grup? Mostrar la línia d’informació del fitxers de comptes de grup.

```
[root@j05 ~]# useradd user1
[root@j05 ~]# useradd -D
GROUP=100
HOME=/home
INACTIVE=-1
EXPIRE=
SHELL=/bin/bash
SKEL=/etc/skel
CREATE_MAIL_SPOOL=yes
[root@j05 ~]# tail -1 /etc/passwd
user1:x:1001:1001::/home/user1:/bin/bash
[root@j05 ~]#
```

- S'ha creat un grup "user1" que nomes conte el usuari "user1" (grup egoista)

```
[root@j05 ~]# tail -1 /etc/group
user1:x:1001:
[root@j05 ~]# 
```

2. Crear els grups: pàdel, quimica i alumnes.

```
[root@j05 ~]# groupadd padel
[root@j05 ~]# groupadd quimica
[root@j05 ~]# groupadd alumnes
[root@j05 ~]#
```

3. Crear l’usuari user2 que tingui el shell /bin/bash, que pertanyi al grup pàdel (primari),
al grup alumnes de secundari i que tingui l’UID 2000. Mostrar la seva informació.

```
[root@j05 ~]# useradd user2 -s /bin/bash -g padel -G alumnes -u 2000
[root@j05 ~]# tail -1 /etc/passwd
user2:x:2000:1016::/home/user2:/bin/bash
[root@j05 ~]# id user2
uid=2000(user2) gid=1016(padel) groups=1016(padel),1018(alumnes)
[root@j05 ~]#
```

4. Modificar l’usuari user2 assignant-li també els grups secundaris quimica i users.

```

```

5. Eliminar el grup pàdel. Es pot? Perquè? (si no es pot no l’elimineu).
6. Modificar l’usuari user2 de manera que el seu grup principal passi a ser alumnes.
Observar on està desada la informació del grup principal i del grups secundaris als
que pertany l’usuari.
7. Modificar l’usuari user2 afegint el grup pàdel com a grup secundari.
8. Eliminar el grup pàdel. Ara es pot?. Perquè?
9. Modificar que el shell de l’usuari user2 sigui el /bin/bash.
10. Eliminar l’usuari user2 i l’usuari user1 (usuari i home)
11. Crear l’usuari user1 establint el seu home a /tmp/develop/projecte. Cal assegurar-se que el directori home de l’usuari es creei si no existeix.
12. Crear l’usuari user2 establint el seu home dins del directori base /tmp. Cal que el
home de l’usuari es creei si no existeix.
13. Quina diferència hi ha entre basename i dirname en les opcions de useradd?.
14. Crear un directori d’esquelet personalitzat anoment skel_alum. Posar dins la xixa
que cregueu pertinent.
15. Crear l’usuari user3 usant l’esquelet skel_alum.
16. Elimina els usuaris i els homes dels usuaris user1, user2 i user3.
17. Establiex que per defecte el shell dels nous usuaris sigui /bin/bash, el grup alumnes i
l’esquelet skel_alum. Observa que estiguin correctament aquests valors definits per
defecte. De quines maneres es pot observar?.
18. Crear l’usuari user1 i observar quins valors per defecte se li han aplicat.
19. Crear l’usuari user2 assegurant-se de que no se li crea un grup principal ‘egoista’.
20. Eliminar els usuaris user1 i user2.
21. Restablir els valors per defecte usuals. Quins són?

22. Quin fitxer conté els rangs de valors que s’associen als usuaris del sistema i als
usuaris ordinaris? Quins són aquests valors?
23. Quin fitxer conté els valors per defecte de la política d’expiració de passwords?
24. Crear l’usuari user. Quin valor pren el camp password? En quins fitxers?
25. Assignar un password a l’usuari user1. Observar on ha quedat desat i en quin
format.
26. Bloquejar l’usuari user1. Verificar que no pot iniciar sessió. Observar el format actual
del password. Desbloquejar-lo i verificar que pot accedir i el format del password.
27. Fer que l’usuari user1 no requereixi de password per iniciar sessió. Verificar i
observar el format de password desat. Assignar-li de nou un password.
28. Establir com a política de password de l’usuari user1 que no pot modificar-se el
password fins passats dos dies, l’ha de modificar cada 30 dies, amb 5 dies d’avís
d’antelació i 3 dies de període de gràcia.
29. Mostrar amb les ordres chage i passwd la informació del compte d’usuari de user1.
Mostrar els valors emmagatzemats en els fitxers dels comptes d’usuari, grups i
passwords.
30. Eliminar l’usuari user1.
