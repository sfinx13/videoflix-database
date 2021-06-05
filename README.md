# Videoflix

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

#### Remarque: 
Nous nous appuierons sur des données normalisées pour le pays et la langue 
[ISO-3166 Country Codes and ISO-639 Language Codes](https://docs.oracle.com/cd/E13214_01/wli/docs92/xref/xqisocodes.html)


## Environnement

Cet environnement fournit une base de données mysql avec un jeu de données ainsi que phpmyadmin

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

1 - Écrire une requête qui retourne le nom et l'année des films

2 - Écrire une requête qui retourne l'année de sortie du film American Beauty

3 - Écrire une requête qui retourne le(s) film(s) sorti en 1999.

4 - Écrire une requête qui retourne le(s) film(s) sortis avant 1998.

5 - Écrire une requête qui retourne le nom de tous les utilisateurs qui ont commenté des films

6 - Écrire une requête qui retourne le nom de tous les utilisateurs qui ont attribué 6 étoiles ou plus à un film

7 - Écrire une requête qui retourne les titres de tous les films qui n'ont pas de notes.

8 - Écrire une requête qui retourne les titres des films avec les ID 5, 6, 8

9 - Écrire une requête qui retourne une liste de film avec l'année dont le titre des films contient les mots "Boogie" ou "Nights".

10 - Écrire une requête qui retourne l'ID d'un acteur ou membre de la direction dont le prénom est 'Woody' et le nom de famille est 'Allen'

### Requête niveau normal

1 - Écrire une requête qui retourne toutes les informations des acteurs qui ont joué un rôle dans le film «Annie Hall».

2 - Écrire une requête qui retourne le nom et prénom du réalisateur qui a réalisé un film dont il a joué un rôle.

3 - Écrire une requête qui retourne tous les films qui ne sont pas américain.

4 - Écrire une requête qui retourne le titre, l'année, la date de sortie du film, le réalisateur et l'acteur des films dont le critique est inconnu.

5 - Écrire une requête qui retourne le titre, l'année, la date de sortie, le réalisateur et l'acteur des films dont le critique est connu.

6 - Écrire une requête qui retourne les titres des films réalisés par le réalisateur Woddy Allen.

7 - Écrire une requête qui retourne les années par ordre croissant ou au moins un film a été produit et qui ont reçu une note de plus de 3 étoiles.

8 - Écrire une requête qui retourne les titres des films FR et US qui n'ont pas été visualisé.

9 - Écrire une requête qui retourne les noms de tous les utlisateurs qui n'ont pas noté.

10 - Écrire une requête qui retourne les utilisateurs qui ont noté plus d'un film.

11 - Écrire une requête qui retourne le titre du film qui a le plus grand nombre d'étoiles par genre et le titre du film apparaît par ordre alphabétique.

12 - Écrire une requête qui retourne les noms de tous les utilisateurs qui ont noté le film American Beauty.

13 - Écrire une requête qui retourne le prénom, nom et role joué de tous les acteurs qui ont joué dans le film «Annie Hall».

14 - Écrire une requête qui retourne le prénom et nom du réalisateur de "Eyes Wide Shut" ainsi que l'année de sortie du film du film

15 - Écrire une requête qui retourne le nom du film et du réalisateur (prénom et nom) don le rôle de Sean Maguire a été joué.

16 - Écrire une requête qui retourne tous les acteurs qui n'ont joué dans aucun film entre 1990 et 2000.

17 - Écrire une requête qui retourne le prénom et le nom des réalisateurs avec le nombre de genres de films dirigés et classer le résultat par ordre alphabétique avec le prénom et le nom du réalisateur.

18 - Écrire une requête qui retourne tous les films avec l'année de sortie, l'année de production et le(s) genre(s).

19 - Écrire une requête qui retourne tous les films avec l'année de sortie, le(s) genre(s) et le nom du réalisateur.

20 - Écrire une requête qui retourne tous les films avec le titre, l'année, la date de sortie, la durée du film et le prénom et le nom du réalisateur sortis avant le 1er janvier 1989, et triez l'ensemble des résultats en fonction de la date de sortie de la date la plus récente à la plus ancienne

21 - Écrire une requête qui calcule la durée moyenne de chaque genre de film

22 - Écrire une requête qui retourne le nombre de films et leur note moyenne par genre et dont la note est supérieur à 4.

23 - Ecrire une requete qui retourne les 10 plus gros consommateurs de films dans l'ordre croissant. Afficher le nom complet sur une seule colonne et le temps de visualisation est à retourner.

24 - Ecrire une requete qui retourne les 5 moins gros consommateurs de film dans l'ordre croissant. Afficher le nom complet sur une seule colonne, l'email et le temps de visualisation est à retourner.

25 - Ecrire une requete qui retourne les trois films les plus vues ainsi que leur note moyenne arrondi à l'entier supérieur.

26 - Ecrire une requete qui retourne les films vues mais jamais noté.

27 - Ecrire une requete qui retourne les genres de films les plus vues de l'année de 2020.

28 - Ecrire une requete qui retourne les utilisateurs qui n'ont vu aucun film.

29 - Ecrire une requete qui retourne le total des films vues par mois de l'année 2019 et 2020

30 - Ecrire une requete qui retourne le temps de visualisation mensuel pour toutes utilisateurs de l'année 2021

31 - Ecrire une requete retourne le mois ou on a vu le plus de film toute années confondu.


