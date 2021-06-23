-- 9 - Écrire une requête qui retourne les noms de tous 
-- les utlisateurs qui n'ont pas noté.

SELECT *
FROM user
WHERE id NOT IN (
        SELECT user_id
        FROM movie_review
    );