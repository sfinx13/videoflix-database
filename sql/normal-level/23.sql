-- 23 - Ecrire une requete qui retourne les 10 plus gros consommateurs de film 
-- dans l'ordre croissant, seul leur nom complet sur une seule colonne 
-- et le temps de visualisation est à retourner
SELECT CONCAT(u.firstname, ' ', u.lastname) as fullname,
    SUM(time_watched) as total
from movie_watch m
    inner join user u on u.id = m.user_id
GROUP by m.user_id
order by total DESC
limit 10