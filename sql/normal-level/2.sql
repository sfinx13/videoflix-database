-- 2 - Écrire une requête qui retourne le nom et prénom du réalisateur 
-- qui a réalisé un film dont il a joué un rôle.
SELECT DISTINCT CONCAT(s.firstname, ' ', s.lastname) AS fullname
FROM movie_casting mc
    INNER JOIN staff s ON s.id = mc.staff_id
    INNER JOIN movie_direction md ON md.movie_id = mc.movie_id
WHERE mc.staff_id IN (
        SELECT staff_id
        FROM movie_direction
    );