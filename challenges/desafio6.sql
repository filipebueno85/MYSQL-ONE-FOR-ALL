SELECT 
MIN(p.value) AS faturamento_minimo,
MAX(p.value) AS faturamento_maximo,
ROUND(AVG(p.value), 2) AS faturamento_medio,
ROUND(SUM(p.value), 2) AS faturamento_total
FROM SpotifyClone.plans AS p
INNER JOIN SpotifyClone.users AS u ON p.plan_id = u.plan_id;
