-- 24 - Ecrire une requete qui retourne les 5 moins gros consommateurs de film 
-- dans l'ordre croissant. Afficher le nom complet sur une seule colonne, l'email 
-- et le temps de visualisation est à retourner.
SELECT concat(u.firstname, ' ', u.lastname) as fullname,
    email,
    SUM(time_watched) as total
from movie_watch m
    inner join user u on u.id = m.user_id
GROUP by m.user_id
order by total ASC
LIMIT 5