/* 	Most popular course category */
SELECT 
    category,
    COUNT(*) AS Enrolments
FROM programs p
JOIN Enrolments e ON p.program_id = e.Program_id
GROUP BY category
ORDER BY Enrolments DESC
LIMIT 1;

/* SQL Server */
SELECT TOP 1
    category,
    COUNT(*) AS Enrolments
FROM programs p
JOIN Enrolments e ON p.program_id = e.Program_id
GROUP BY category
ORDER BY Enrolments DESC;
