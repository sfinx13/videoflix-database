# Videoflix

## Quelques recommandations de cours, documentation de BDD, SQL, MYSQL 

[[fr] Cours et tutoriels sur le langage SQL](https://sql.sh/)

[[fr] Modélisation de BDD](https://youtube.com/playlist?list=PLlxQJeQRaKDTepDEHUYOEiT-qCDBQvTva)

[[fr] Formation MYSQL](https://youtube.com/playlist?list=PLjwdMgw5TTLUJLpzUYGBK7K5-hPgZA7zo)

----
[[en] MySQL Database - Full Course](https://youtu.be/ER8oKX5myE0)

[[en] SQL Tutorial - Full Database Course for Beginners](https://youtu.be/HXV3zeQKqGY)

[[en] MySQL Tutorial for Beginners](https://youtu.be/7S_tz1z_5bA)

[[en] Database Design Course](https://youtu.be/ztHopE5Wnpc)

[[en] MySQL Documentation](https://dev.mysql.com/doc/)

##  Modelisation et conception de base de données

Videoflix est une plateforme de streaming vidéo qui permet de consulter des films à raison de 600 minutes par mois et par utilisateur.
La plateforme est accessible uniquement à travers un e-mail et propose des films en tous genres en version originale.

Les films les mieux notés, les films récemment sortis en salle et les films locaux selon le pays de l'utilisateur sont mis en avant. 
Il se peut aussi qu'un film non sorti en salle soit référencé auprès de Videoflix.

Un moteur de recherche avancée permet un recherche intuitif au contenu, que ce soit sur les informations techniques du film (films, casting, membres de la production) ou sa popularité.

Une fiche technique du film est disponible, elle possède :
* une vignette
* un synopsis
* la durée
* le casting ainsi que les rôles joués dans le film
* les membres de la direction

Pour finir l'utilisateur pourra attribuer une note au film ainsi qu'un commentaire s'il le souhaite.

### Schema MCD (Modèle conceptuel des données)
![schema-entity-relationship-model.png](schema-entity-relationship-model.png)

### Schema base de données 
![schema-entity-relationship-model.png](schema-database.png)

#### Remarque
Nous nous appuierons sur des données normalisées pour le pays et la langue 
[ISO-3166 Country Codes and ISO-639 Language Codes](https://docs.oracle.com/cd/E13214_01/wli/docs92/xref/xqisocodes.html)

## Remote environnement

Il est possible d'avoir une base de données MySQL avec un phpmyadmin sans avoir rien à installer. 

Je vous propose https://remotemysql.com, il vous suffira de créer un compte pour obtenir votre base de données accéssible via phpmyadmin

Pour finir uploader le dump init/videoflix_dump.sql en supprimant au préalable la ligne 1 
```
USE videoflix_db;
```

![schema-entity-relationship-model.png](remotemysql.png)

**Pensez quand même à activer votre AD Blocker**


## Docker environnement

Cet environnement docker fournit une base de données mysql avec un jeu de données ainsi que phpmyadmin

### Pré-requis

Téléchargement: https://docs.docker.com/get-docker/

* Docker (minimum version 18.06)
* Docker-compose (minimum version 1.25.0)

Merci de vérfier les pré-requis avec la commande suivante

```bash
$ docker -v
``` 

```bash
$ docker-compose -v
``` 
En savoir plus:
* https://docs.docker.com/compose/
* https://docs.docker.com/compose/compose-file/


### Lancer l'environnement

```bash
$ docker-compose up -d
```

### Lister vos containers

```bash
$ docker-compose ps
    Name               Command                 State             Ports
---------------------------------------------------------------------------------------------
phpmyadmin     /docker-entrypoint.sh apac ...   Up      0.0.0.0:8080->80/tcp
videoflix_db   docker-entrypoint.sh mysqld      Up      0.0.0.0:6606->3306/tcp, 33060/tcp
```

### Aperçu de docker-compose CLI
https://docs.docker.com/compose/reference/


### Ouvrir phpmyadmin sur un navigateur
http://localhost:8080

```
user: root
password: password
``` 

![schema-entity-relationship-model.png](phpmyadmin.png)


## Requêtes SQL
Ci joint l'ensemble des requêtes à executer

### Requête niveau basique

[SQLBASIC.md](SQLBASIC.md)

### Requête niveau normal

[SQLNORMAL.md](SQLNORMAL.md)

## Correction SQL

NB: Pour ceux qui utilise un OS autre que Linux, merci de vous assurer que make soit installé.

https://fr.wikipedia.org/wiki/Make


### Execution requete SQL via make

Pour executer la requête 23 du niveau normale

```bash
$ make normal sql=23
```

Pour executer la requête 10 du niveau basique

```bash
$ make basic sql=10
```

```bash
======================================================================================================
SQL:
======================================================================================================
-- 10 - Écrire une requête qui retourne l'ID d'un acteur ou membre de la direction 
-- dont le prénom est 'Woody' et le nom de famille est 'Allen'

SELECT
    id, firstname, lastname
FROM
    staff
WHERE
    firstname LIKE '%Woody%'
        AND lastname LIKE '%Allen%';
======================================================================================================
RESULTS:
======================================================================================================
id      firstname       lastname
11      Woody   Allen
```
Pour se connecter à la base en ligne de commande
```bash
$ make mysql
``` 
