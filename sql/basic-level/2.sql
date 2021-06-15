-- 2 - Écrire une requête qui retourne l'année de sortie du film American Beauty
SELECT title,
    YEAR(released_at) AS year
FROM movie
WHERE title LIKE '%American Beauty%'\G;