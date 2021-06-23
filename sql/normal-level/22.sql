-- 22 - Écrire une requête qui retourne le nombre de films et 
-- leur note moyenne par genre et dont la note est supérieur à 4.
SELECT mg.genre_id,
    g.type,
    AVG(mr.stars) as average_note,
    COUNT(*) as nb_film_per_genre
FROM movie_genre mg
    INNER JOIN genre g on g.id = mg.genre_id
    INNER JOIN movie m on m.id = mg.movie_id
    LEFT JOIN movie_review mr on mr.movie_id = m.id
GROUP BY mg.genre_id,
    g.type
HAVING average_note > 4;