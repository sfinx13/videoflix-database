-- 10 - Écrire une requête qui retourne l'ID d'un acteur ou membre de la direction dont le prénom est 'Woody' et le nom de famille est 'Allen'

SELECT 
    id, firstname, lastname
FROM
    staff
WHERE
    firstname LIKE '%Woody%'
        AND lastname LIKE '%Allen%';  