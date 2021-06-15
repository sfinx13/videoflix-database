-- 6 - Écrire une requête qui retourne le nom de tous les utilisateurs 
-- qui ont attribué 6 étoiles ou plus à un film

SELECT DISTINCT firstname, lastname
FROM movie_review mc
    INNER JOIN user u ON u.id = mc.user_id
WHERE stars >= 6;