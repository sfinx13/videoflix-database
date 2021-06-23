-- 20 - Écrire une requête qui retourne tous les films sorti avant le 1er janvier 1989
-- avec le titre, l'année, la date de sortie, 
-- la durée du film et le prénom et le nom du réalisateur et 
-- triez l'ensemble des résultats en fonction de la 
-- date de sortie de la date la plus récente à la plus ancienne

SELECT 
    m.year,
    m.released_at,
    CONCAT(m.time, ' minutes'),
    m.title,
    g.type,
    s.firstname,
    s.lastname
FROM
    movie m
        INNER JOIN
    movie_genre mg ON mg.movie_id = m.id
        INNER JOIN
    genre g ON g.id = mg.genre_id
        INNER JOIN
    movie_direction md ON md.movie_id = m.id
        INNER JOIN
    staff s ON s.id = md.staff_id
WHERE
    m.released_at < '1989-01-01'
ORDER BY m.released_at DESC;