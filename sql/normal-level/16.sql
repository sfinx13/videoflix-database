-- 16 - Écrire une requête qui retourne tous les acteurs 
-- qui n'ont joué dans aucun film entre 1990 et 2000.

SELECT s.firstname,
    s.lastname
FROM staff s
    INNER JOIN movie_casting mc ON mc.staff_id = s.id
    INNER JOIN movie m ON m.id = mc.movie_id
WHERE m.year NOT BETWEEN 1990 AND 2000;