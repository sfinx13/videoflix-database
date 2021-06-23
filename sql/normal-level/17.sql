-- 17 - Écrire une requête qui retourne le prénom 
-- et le nom des réalisateurs avec le nombre de 
-- genres de films dirigés et classer le résultat 
-- par ordre alphabétique avec le prénom et le nom du réalisateur.

SELECT 
    mg.genre_id,
    CONCAT(s.firstname, ' ', s.lastname) AS director,
    COUNT(*) nb_genre_directed
FROM
    movie_direction md
        INNER JOIN
    staff s ON s.id = md.staff_id
        INNER JOIN
    movie m ON m.id = md.movie_id
        INNER JOIN
    movie_genre mg ON mg.movie_id = m.id
GROUP BY mg.genre_id, director
ORDER BY director;

