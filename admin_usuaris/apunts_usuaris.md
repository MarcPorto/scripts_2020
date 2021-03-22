# Administracio d'usuaris

## Ordres
**Crear:**
- ``` # useradd (crear usuari)```
- ``` # passwd (activa el compte / permet sesio)```
- per defecte crea usuaris egoistes, pertanyen a un propi grup ( no es desitjable)

**Cuan crees un usuari:**
  * Crees una entrada al final de l'arxiu /etc/passwd
    * Crees una entrada al final de l'arxiu /etc/shadow
  * Crees una entrada al final de l'arxiu /etc/group (exepte si modifiquem la creacio de l'usuari)
    * Crees una entrada al final de l'arxiu /etc/gshadow
  
**Eliminar:**
- ``` # userdel -r (elimina l'usuari i els seus arxius)```

**Ordres varias**
- ```# chfn```
- ```# finger```
- ```# useradd -D --> Mostra els valors per defecte a l'hora de crear un usuari```
  - ```cat /etc/default/useradd (conte els valors per defecte de useradd)```
- ```# chsh```
- ```# usermod```
- ```# chage```

**useradd -D**
```
Ueradd -D
    GROUP=100
    HOME=/home
    INACTIVE=-1
    EXPIRE=
    SHELL=/bin/bash
    SKEL=/etc/skel
    CREATE_MAIL_SPOOL=yes
```
**useradd**

man 5 shadow

## Archius
```
/etc/passwd --> comptes d'usuari (man 5 passwd)
	      - cada linea es un usuari  
	           login:x:UID:GID:GECOS:homeDir:shell
	      - pos2 = x, vol dir que el password esta guardad a /etc/shadow

    /etc/shadow --> els passwords dels usuaris
		  - es descriu la politica de comptes
		  - password convertidas a HASH MD5
			(el hash no es pot tornar a pasara a texte pla)
		  - user1:!!:18701:0:99999:7::: --> !! vol dir que no hi ha password
```
```
/etc/group --> grups  (grup 100 --> usuaris general)
	     - cada linea es un usuari
   	           user1:x:1003:
    	     - pos 2 = x, vol dir que el password esta guardad a /etc/gshadow
    /etc/gshadow --> els passwords dels grups (molt inusual)
```
```
/etc/login.defs --> definicions de valors per defecte

/etc/default/useradd --> Conte els valors de creacio d'usuari per defecte
```

**Politica de password**
- 
- Cuant caduca el password
- Longitud minima




```# "." --> Source```



## Cambiar sempre
```
/etc/selinux/config
```
