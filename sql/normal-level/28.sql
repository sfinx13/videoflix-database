-- 28 - Ecrire une requete qui retourne les utilisateurs qui n'ont vu aucun film.
SELECT *
FROM user
WHERE id NOT IN (
        SELECT DISTINCT user_id
        FROM movie_watch
    )