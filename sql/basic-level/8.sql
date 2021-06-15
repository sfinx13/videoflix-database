-- 8 - Écrire une requête qui retourne les titres des films avec les ID 5, 6, 8

SELECT 
    title
FROM
    movie
WHERE
    id IN (5 , 6, 8);