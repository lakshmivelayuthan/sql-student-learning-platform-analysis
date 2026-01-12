/*	Find the total number of Enrolments per course. */
SELECT 
    c.course_id,
    c.title,
    COUNT(e.Enrolment_id) AS total_Enrolments
FROM Courses c
LEFT JOIN Enrolments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.title
ORDER BY total_Enrolments DESC;
