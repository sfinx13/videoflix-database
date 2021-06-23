-- 3 - Écrire une requête qui retourne tous les films qui ne sont pas américain.
SELECT *
FROM movie
WHERE country NOT LIKE 'US';