/*	Courses with highest drop rate */
SELECT 
    p.title,
    SUM(CASE WHEN e.status_ = 'dropped' THEN 1 ELSE 0 END) AS dropped,
    COUNT(*) AS total,
    (SUM(CASE WHEN e.status_ = 'dropped' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS drop_rate
FROM Enrolments e
JOIN Programs p ON e.Program_id = p.Program_id
GROUP BY p.title
ORDER BY drop_rate DESC;
