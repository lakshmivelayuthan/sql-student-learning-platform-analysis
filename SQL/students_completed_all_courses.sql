/*	Students who have completed ALL courses offered */
SELECT DISTINCT e.student_id
FROM enrolments e
WHERE e.status_ = 'Completed'
AND NOT EXISTS (
                SELECT 1
                FROM enrolments x
                WHERE x.student_id = e.student_id
                AND x.status_ <> 'Completed'
);
