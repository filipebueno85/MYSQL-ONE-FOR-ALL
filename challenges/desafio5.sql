SELECT s.name AS cancao, COUNT(h.user_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.historys AS h
ON s.song_id = h.song_id
GROUP BY s.name
ORDER BY reproducoes DESC, s.name ASC
LIMIT 2;
