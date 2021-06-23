-- 15 - Écrire une requête qui retourne le nom du film et 
-- du réalisateur (prénom et nom) don le rôle de Sean Maguire a été joué.
SELECT m.title,
    CONCAT(
        director.firstname,
        ' ',
        director.lastname
    ) AS director
FROM movie_direction md
    INNER JOIN movie m ON m.id = md.movie_id
    INNER JOIN staff director ON director.id = md.staff_id
WHERE md.movie_id = (
        SELECT m.id
        FROM movie_casting mc
            INNER JOIN movie m ON m.id = mc.movie_id
        WHERE mc.starred_as LIKE '%Sean Maguire%'
    )