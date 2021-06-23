-- 11 - Écrire une requête qui retourne le titre du film 
-- qui a le plus grand nombre d'étoiles par genre. 
-- Le titre du film apparaît par ordre alphabétique.

SELECT 
    mg.genre_id, g.type, m.title, MAX(mr.stars) as best_film
FROM
    movie_review mr
        INNER JOIN
    movie m ON m.id = mr.movie_id
        INNER JOIN
    movie_genre mg ON mg.movie_id = m.id
        INNER JOIN
    genre g ON g.id = mg.genre_id
GROUP BY mg.genre_id, g.type, m.title;

-- NOTE: COMPATIBLE WITH SQL_MODE=ONLY_FULL_GROUP_BY