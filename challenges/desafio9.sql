SELECT
COUNT(h.song_id) AS musicas_no_historico
FROM SpotifyClone.historys AS h
INNER JOIN SpotifyClone.users AS u
ON u.user_id = h.user_id
WHERE u.name = 'Barbara Liskov'
GROUP BY u.name;
