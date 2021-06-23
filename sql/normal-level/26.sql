-- 26 - Ecrire une requete qui retourne les films vues mais jamais noté.
SELECT DISTINCT w.movie_id,
    m.title
FROM movie_watch w
    INNER JOIN movie m on w.movie_id = m.id
WHERE w.movie_id NOT IN (
        SELECT DISTINCT movie_id
        FROM movie_review r
    )