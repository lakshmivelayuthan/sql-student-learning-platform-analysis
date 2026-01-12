/*	Instructor-wise average course rating */
SELECT 
    i.instructor_name,
    AVG(c.rating) AS avg_rating
FROM Courses c
JOIN Instructors i ON c.instructor_id = i.instructor_id
GROUP BY i.instructor_name
ORDER BY avg_rating DESC;
