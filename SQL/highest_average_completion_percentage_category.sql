/*	The category that has the highest average completion percentage */
SELECT 
    c.category,
    AVG(p.percentage_completed) AS avg_completion
FROM Course_Progress p
JOIN Courses c ON p.course_id = c.course_id
GROUP BY c.category
ORDER BY avg_completion DESC;
