-- 4 - Écrire une requête qui retourne le(s) film(s) sortis avant 1998.
SELECT *
FROM movie
WHERE YEAR(released_at) < 1998;