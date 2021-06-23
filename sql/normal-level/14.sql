-- 14 - Écrire une requête qui retourne le prénom
-- et nom du réalisateur de "Eyes Wide Shut" 
-- ainsi que l'année de sortie du film.

SELECT 
    CONCAT(s.firstname, ' ', s.lastname) AS director,
    m.title,
    m.year
FROM
    movie m
        INNER JOIN
    movie_direction md ON md.movie_id = m.id
        INNER JOIN
    staff s ON s.id = md.staff_id
WHERE
    title LIKE '%Eyes Wide Shut%'