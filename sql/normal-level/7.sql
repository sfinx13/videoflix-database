-- 7 - Écrire une requête qui retourne les années par ordre 
-- croissant ou au moins un film a été produit et qui ont 
-- reçu une note de plus de 3 étoiles.

SELECT m.year,
    AVG(stars) AS average_film
FROM movie_review mr
    INNER JOIN movie m ON m.id = mr.movie_id
GROUP BY m.year
HAVING average_film >= 3
ORDER BY m.year;