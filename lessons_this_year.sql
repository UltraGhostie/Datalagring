SELECT 
	EXTRACT(MONTH FROM t_s.date) AS month,
	COUNT(DISTINCT s.id) AS total,
	COUNT(DISTINCT s_l.id) AS single,
	COUNT(DISTINCT g_l.id) AS group,
	COUNT(DISTINCT e.id) AS ensemble
FROM
	time_slot AS t_s LEFT JOIN
	session AS s ON s.time_slot_id = t_s.id LEFT JOIN
	single_lesson AS s_l ON s.id = s_l.id LEFT JOIN
	group_lesson AS g_l ON s.id = g_l.id LEFT JOIN
	ensemble AS e ON s.id = e.id
	WHERE
	EXTRACT(YEAR FROM t_s.date) = EXTRACT(YEAR FROM CURRENT_DATE)
GROUP BY month