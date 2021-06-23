-- 6 - Écrire une requête qui retourne les titres 
-- des films réalisés par le réalisateur Woddy Allen.

SELECT m.title
FROM movie_direction md
    INNER JOIN movie m ON m.id = md.movie_id
    INNER JOIN staff s ON s.id = md.staff_id
WHERE s.firstname LIKE '%Woody%'
    AND s.lastname LIKE '%Allen%';