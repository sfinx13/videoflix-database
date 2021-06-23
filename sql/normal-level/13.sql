-- 13 - Écrire une requête qui retourne 
-- le prénom, nom et role joué de tous les 
-- acteurs qui ont joué dans le film «Annie Hall».
SELECT s.firstname,
    s.lastname,
    mc.starred_as
FROM staff s
    INNER JOIN movie_casting mc ON mc.staff_id = s.id
    INNER JOIN movie m ON m.id = mc.movie_id
WHERE m.title LIKE '%Annie Hall%';