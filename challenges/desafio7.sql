SELECT 
a.name AS artista,
al.name AS album,
COUNT(f.user_id) AS pessoas_seguidoras
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albuns AS al 
ON al.artist_id = a.artist_id
INNER JOIN SpotifyClone.artists_followers AS f 
ON f.artist_id = a.artist_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;
