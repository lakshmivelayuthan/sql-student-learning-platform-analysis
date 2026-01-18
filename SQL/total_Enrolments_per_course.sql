/*	Find the total number of Enrolments per course. */
SELECT 
    p.program_id,
    p.title,
    COUNT(e.Enrolment_id) AS total_Enrolments
FROM programs p
LEFT JOIN Enrolments e ON p.program_id = e.Program_id
GROUP BY p.program_id, p.title
ORDER BY total_Enrolments DESC;
