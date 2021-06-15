-- 5 - Écrire une requête qui retourne le nom de tous les utilisateurs
-- qui ont commenté des films

SELECT DISTINCT
    firstname, lastname
FROM
    movie_review mc
        INNER JOIN
    user u ON u.id = mc.user_id;