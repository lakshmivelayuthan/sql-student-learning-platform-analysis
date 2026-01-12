/* Instructor with highest student engagement (total Enrolments across their courses) */
SELECT 
    i.instructor_name,
    COUNT(e.Enrolment_id) AS total_Enrolments
FROM Instructors i
JOIN Courses c ON i.instructor_id = c.instructor_id
JOIN Enrolments e ON c.course_id = e.course_id
GROUP BY i.instructor_name
ORDER BY total_Enrolments DESC;
