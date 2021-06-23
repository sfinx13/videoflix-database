-- 29 - Ecrire une requete qui retourne le total des films vues 
-- par mois et année
SELECT DATE_FORMAT(w.created_at, '%Y-%m') as time,
    SUM(time_watched)
FROM `movie_watch` w
INNER JOIN movie m on m.id = w.movie_id
WHERE YEAR(w.created_at) IN (2019, 2020)
GROUP BY DATE_FORMAT(w.created_at, '%Y-%m')
ORDER BY time ASC