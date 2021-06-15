-- 9 - Écrire une requête qui retourne une liste de film 
-- avec l'année dont le titre des films contient les mots 
-- "Boogie" ou "Nights".

SELECT 
    title, year
FROM
    movie
WHERE
    title LIKE '%Boogie%' OR '%Nights%';
