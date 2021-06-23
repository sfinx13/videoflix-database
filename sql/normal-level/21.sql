-- 21 - Écrire une requête qui calcule la durée moyenne de chaque genre de film

SELECT 
    g.id, g.type, ROUND(AVG(m.time)) as time_film
FROM
    movie m
        INNER JOIN
    movie_genre mg ON mg.movie_id = m.id
        INNER JOIN
    genre g ON g.id = mg.genre_id
GROUP BY g.id, g.type