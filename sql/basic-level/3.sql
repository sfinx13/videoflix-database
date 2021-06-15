-- 3 - Écrire une requête qui retourne le(s) film(s) sorti en 1999.
SELECT *
FROM movie
WHERE YEAR(released_at) = 1999;