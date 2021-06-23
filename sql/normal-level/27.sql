-- 27 - Ecrire une requete qui retourne les genres de films les plus vues de l'année de 2020.
SELECT g.type,
    COUNT(m.id) as view
FROM movie m
    INNER JOIN movie_watch w ON w.movie_id = m.id
    INNER JOIN movie_genre mg on mg.movie_id = m.id
    INNER JOIN genre g on g.id = mg.genre_id
WHERE YEAR(w.created_at) = 2020
GROUP BY g.type
ORDER BY view DESC;