/*	Average completion percentage per student */
SELECT 
    s.student_id,
    s.student_name,
    AVG(cp.completion_percentage) AS avg_progress
FROM Students s
JOIN Course_Progress cp ON s.student_id = cp.student_id
GROUP BY s.student_id, s.student_name
ORDER BY avg_progress DESC;
