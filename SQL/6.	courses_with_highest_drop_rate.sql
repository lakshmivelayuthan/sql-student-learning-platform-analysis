/*	Courses with highest drop rate */
SELECT 
    c.title,
    SUM(CASE WHEN e.status = 'dropped' THEN 1 ELSE 0 END) AS dropped,
    COUNT(*) AS total,
    (SUM(CASE WHEN e.status = 'dropped' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS drop_rate
FROM Enrolments e
JOIN Courses c ON e.course_id = c.course_id
GROUP BY c.title
ORDER BY drop_rate DESC;
