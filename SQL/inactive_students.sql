/*	Identifying inactive students (not accessed in last 30 days) */
SELECT 
    s.student_id,
    s.name,
    p.last_access_date
FROM Students s
JOIN Course_Progress p ON s.student_id = p.student_id
WHERE p.last_access_date < CURRENT_DATE - INTERVAL 30 DAY;
