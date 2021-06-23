-- 19 - Écrire une requête qui retourne 
-- tous les films avec l'année de sortie, 
-- le(s) genre(s) et le nom du réalisateur.

SELECT m.title,
    YEAR(m.released_at) AS released_year,
    GROUP_CONCAT(g.type separator ', '),
    CONCAT(s.firstname, ' ', s.lastname) AS direction
FROM movie m
    INNER JOIN movie_genre mg ON mg.movie_id = m.id
    INNER JOIN genre g ON g.id = mg.genre_id
    INNER JOIN movie_direction md ON md.movie_id = m.id
    INNER JOIN staff s ON s.id = md.staff_id
GROUP BY m.title, released_year, direction
ORDER BY released_year DESC;

-- NOTE: COMPATIBLE WITH SQL_MODE=ONLY_FULL_GROUP_BY