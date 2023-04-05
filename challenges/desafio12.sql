SELECT 
a.name AS artista,
CASE
WHEN COUNT(fs.song_id) IN(3, 4) THEN 'B'
WHEN COUNT(fs.song_id) IN(1, 2) THEN 'C'
WHEN COUNT(fs.song_id) >= 5 THEN 'A'
ELSE '-'
END AS ranking
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albuns AS al
ON a.artist_id = al.artist_id
INNER JOIN SpotifyClone.songs AS s
ON s.album_id = al.album_id
LEFT JOIN SpotifyClone.favorites_songs AS fs
ON fs.song_id = s.song_id
GROUP BY artista
ORDER BY COUNT(fs.song_id) DESC, artista ASC;
