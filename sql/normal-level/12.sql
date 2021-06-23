-- 12 - Écrire une requête qui retourne les noms de tous les utilisateurs
-- qui ont noté le film American Beauty.

SELECT u.firstname,
    u.lastname
FROM movie_review mr
    INNER JOIN movie m ON m.id = mr.movie_id
    INNER JOIN user u ON u.id = mr.user_id
WHERE m.title LIKE '%American Beauty%';