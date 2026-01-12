/*	Students who have completed ALL courses offered */
SELECT 
    e.student_id
FROM Enrolments e
WHERE e.status = 'completed'
GROUP BY e.student_id
HAVING COUNT(DISTINCT e.course_id) = (SELECT COUNT(*) FROM Courses);
