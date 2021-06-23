-- 31 - Ecrire une requete qui retourne le mois 
-- ou on a vu le plus de film toute années confondu.

SELECT COUNT(w.movie_id),  DATE_FORMAT(w.created_at, '%Y-%m') as time
FROM `movie_watch` w
inner join movie m on m.id = w.movie_id
GROUP BY DATE_FORMAT(w.created_at, '%Y-%m')
ORDER BY time DESC
LIMIT 1