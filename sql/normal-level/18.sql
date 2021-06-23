-- 18 - Écrire une requête qui retourne tous les films 
-- avec l'année de sortie, l'année de production 
-- et le(s) genre(s).

SELECT YEAR(m.released_at) as released_at,
    m.year,
    m.title,
    GROUP_CONCAT(g.type separator ', ')
FROM movie m
    INNER JOIN movie_genre mg ON mg.movie_id = m.id
    INNER JOIN genre g ON g.id = mg.genre_id
GROUP BY m.title,
    released_at,
    m.year
ORDER BY year DESC;

-- NOTE: COMPATIBLE WITH SQL_MODE=ONLY_FULL_GROUP_BY