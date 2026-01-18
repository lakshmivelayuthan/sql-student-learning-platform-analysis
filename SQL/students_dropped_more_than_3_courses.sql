/*	Find students who dropped more than 3 courses */
SELECT 
    student_id,
    COUNT(*) AS dropped_count
FROM Enrolments
WHERE status_ = 'Discontinued'
GROUP BY student_id
HAVING COUNT(*) > 3;
