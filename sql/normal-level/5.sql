-- 5 - Écrire une requête qui retourne le titre, l'année, 
-- la date de sortie, le réalisateur et l'acteur des films dont la critique existe.
SELECT m.title,
    CONCAT(
        director.firstname,
        ' ',
        director.lastname
    ) AS director,
    m.year,
    m.released_at,
    CONCAT(actor.firstname, ' ', actor.lastname) AS actor
FROM movie m
    INNER JOIN movie_casting mc ON mc.movie_id = m.id
    INNER JOIN movie_direction md ON md.movie_id = m.id
    INNER JOIN staff actor ON actor.id = mc.staff_id
    INNER JOIN staff director ON director.id = md.staff_id
WHERE m.id IN (
        SELECT DISTINCT movie_id
        FROM movie_review
    );