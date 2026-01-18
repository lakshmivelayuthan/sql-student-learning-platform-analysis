/*	Instructor-wise average course rating */
SELECT 
    i.instructor_name,
    AVG(p.rating) AS avg_rating
FROM programs p
JOIN Instructors i ON p.instructor_id = i.instructor_id
GROUP BY i.instructor_name
ORDER BY avg_rating DESC;
