-- 32 - Ecrire une requete qui retourne la liste 3 derniers films 
-- sorti en ignorant le premier 

SELECT title, released_at
FROM movie
ORDER BY released_at DESC
LIMIT 3 OFFSET 1;