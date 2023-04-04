SELECT   
u.name AS pessoa_usuaria, 
IF(MAX(YEAR(h.reproduction_date)) < 2021, 'Inativa', 'Ativa') AS status_pessoa_usuaria
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.historys AS h
ON u.user_id = h.user_id
GROUP BY u.name
ORDER BY u.name;
