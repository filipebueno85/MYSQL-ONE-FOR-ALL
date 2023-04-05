SELECT 
al.name AS album,
COUNT(fs.song_id) AS favoritadas
FROM SpotifyClone.albuns AS al
INNER JOIN SpotifyClone.songs AS s
ON al.album_id = s.album_id
INNER JOIN SpotifyClone.favorites_songs AS fs
ON fs.song_id = s.song_id
GROUP BY album
ORDER BY favoritadas DESC, album ASC
LIMIT 3;
