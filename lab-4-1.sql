-- How many lifetime hits does Barry Bonds have?

SELECT players.id, players.first_name, players.last_name, sum(stats.hits)
FROM stats INNER JOIN players ON players.id = stats.player_id
WHERE players.first_name = 'Barry' AND players.last_name = 'Bonds'
GROUP BY players.id

-- Expected result:
-- 2935


