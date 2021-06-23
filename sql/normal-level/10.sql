-- 10 - Écrire une requête qui retourne les utilisateurs 
-- qui ont noté plus d'un film.

SELECT CONCAT(u.firstname, ' ', u.lastname) AS fullname,
    COUNT(*) AS nb_user_note
FROM movie_review mr
    INNER JOIN user u ON u.id = mr.user_id
GROUP BY user_id
HAVING nb_user_note > 1;