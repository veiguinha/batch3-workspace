SELECT pl.name, pl.height, pl.weight, shot_power, agility
FROM player AS pl INNER JOIN player_attributes ON player_id = pl.id
WHERE shot_power > 85
AND agility > 80
ORDER BY pl.height DESC;