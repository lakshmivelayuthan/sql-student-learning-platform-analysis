/*	List the top 10 students with the most completed courses. */
/* Postgre SQL */
SELECT 
    s.student_id,
    s.student_name,
    COUNT(*) AS completed_courses
FROM Enrolments e
JOIN Students s ON e.student_id = s.student_id
WHERE e.status_ = 'completed'
GROUP BY s.student_id, s.student_name
ORDER BY completed_courses DESC
LIMIT 10;

/* MY SQL Server */
SELECT TOP 10
    s.student_id,
    s.student_name,
    COUNT(*) AS completed_courses
FROM enrolments e
JOIN Students s ON e.student_id = s.student_id
WHERE e.Status_ = 'completed'
GROUP BY s.student_id, s.student_name
ORDER BY completed_courses DESC;
