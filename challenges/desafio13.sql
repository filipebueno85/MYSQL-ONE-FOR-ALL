SELECT 
CASE
WHEN u.age BETWEEN 0 AND 30 THEN 'Até 30 anos'
WHEN u.age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
WHEN u.age > 60 THEN 'Maior de 60 anos'
ELSE 0

END AS faixa_etaria,
COUNT(DISTINCT u.user_id) AS total_pessoas_usuarias,
COUNT(fs.song_id) AS total_favoritadas
FROM SpotifyClone.users AS u
LEFT JOIN SpotifyClone.favorites_songs AS fs
ON u.user_id = fs.user_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;
