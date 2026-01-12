/*	Average completion percentage per student */
SELECT 
    s.student_id,
    s.name,
    AVG(p.percentage_completed) AS avg_progress
FROM Students s
JOIN Course_Progress p ON s.student_id = p.student_id
GROUP BY s.student_id, s.name
ORDER BY avg_progress DESC;
