-- 1 - Écrire une requête qui retourne toutes les informations 
-- des acteurs qui ont joué un rôle dans le film «Annie Hall».

SELECT s.*
FROM movie_casting mc
    INNER JOIN movie m ON m.id = mc.movie_id
    INNER JOIN staff s ON s.id = mc.staff_id
WHERE m.title LIKE '%Annie Hall%';