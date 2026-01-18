/* Instructor with highest student engagement (total Enrolments across their courses) */
SELECT 
    i.instructor_name,
    COUNT(e.Enrolment_id) AS total_Enrolments
FROM Instructors i
JOIN programs p ON i.instructor_id = p.instructor_id
JOIN Enrolments e ON p.program_id = e.program_id
GROUP BY i.instructor_name
ORDER BY total_Enrolments DESC;
