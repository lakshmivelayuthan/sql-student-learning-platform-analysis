/* 	Most popular course category */
SELECT 
    category,
    COUNT(*) AS Enrolments
FROM Courses c
JOIN Enrolments e ON c.course_id = e.course_id
GROUP BY category
ORDER BY Enrolments DESC
LIMIT 1;
