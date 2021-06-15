-- 7 - Écrire une requête qui retourne les titres de tous les films qui n'ont pas de notes.

SELECT 
    title
FROM
    movie
WHERE
    id NOT IN (SELECT 
            movie_id
        FROM
            movie_review
        WHERE
            stars IS NOT NULL);