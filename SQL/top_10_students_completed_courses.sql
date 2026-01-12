/*	List the top 10 students with the most completed courses. */
SELECT 
    s.student_id,
    s.name,
    COUNT(*) AS completed_courses
FROM Enrolments e
JOIN Students s ON e.student_id = s.student_id
WHERE e.status = 'completed'
GROUP BY s.student_id, s.name
ORDER BY completed_courses DESC
LIMIT 10;
