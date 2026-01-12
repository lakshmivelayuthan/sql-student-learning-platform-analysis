/*	Monthly new student registrations */
SELECT 
    DATE_FORMAT(join_date, '%Y-%m') AS month,
    COUNT(*) AS registrations
FROM Students
GROUP BY DATE_FORMAT(join_date, '%Y-%m')
ORDER BY month;
