-- 30 - Ecrire une requete qui retourne le temps de visualisation mensuel 
-- pour toutes utilisateurs de l'année 2021

SELECT DATE_FORMAT(w.created_at, '%Y-%m') as Time,
    SUM(time_watched) as Time_watched,
    CONCAT(firstname, ' ', lastname) as Fullname
FROM `movie_watch` w
    INNER JOIN user u on u.id = w.user_id
WHERE YEAR(w.created_at) = 2021
GROUP BY DATE_FORMAT(w.created_at, '%Y-%m'),
    w.user_id
ORDER BY time,
    w.user_id ASC