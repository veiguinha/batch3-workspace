SELECT t.name,t.short_name ,AVG(home_team_goal) AS average_goals
FROM team AS t INNER JOIN MATCH ON t.id = home_team_id INNER JOIN team_attributes att ON t.id = att.team_id
GROUP BY home_team_id, t.name, t.short_name, att.defencepressure
HAVING att.defencepressure > 55
AND AVG(home_team_goal) < 2
AND COUNT(home_team_id) > 30
ORDER BY AVG(home_team_goal); 