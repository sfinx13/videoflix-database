-- 25 - Ecrire une requete qui retourne les trois films 
-- les plus vues en 2021 ainsi que leur note moyenne arrondi à l'entier supérieur
SELECT m.id,
    m.title,
    SUM(w.time_watched) as total,
    AVG(r.stars) as note
FROM `movie` m
    INNER JOIN movie_watch w on w.movie_id = m.id
    INNER JOIN movie_review r on r.movie_id = m.id
WHERE YEAR(w.created_at) = 2021
GROUP BY m.id
ORDER by total desc
LIMIT 3;