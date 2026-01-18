/*	Identifying inactive students (not accessed in last 30 days) */
SELECT 
    s.student_id,
    s.student_name,
    MAX(cp.last_date_accessed) AS last_accessed
FROM students s
JOIN course_progress cp 
    ON s.student_id = cp.student_id
GROUP BY s.student_id, s.student_name
HAVING MAX(cp.last_date_accessed) < CURRENT_DATE - INTERVAL 30 DAY;

/* SQL Server */
SELECT 
    s.student_id,
    s.student_name,
    MAX(cp.last_date_accessed) AS last_accessed
FROM students s
JOIN course_progress cp 
    ON s.student_id = cp.student_id
GROUP BY s.student_id, s.student_name
HAVING MAX(cp.last_date_accessed) < DATEADD(DAY, -30, GETDATE());
