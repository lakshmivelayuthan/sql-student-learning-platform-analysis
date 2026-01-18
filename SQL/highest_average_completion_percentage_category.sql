/*	The category that has the highest average completion percentage */
SELECT 
    p.category,
    AVG(cp.Completion_percentage) AS avg_completion
FROM Course_Progress cp
JOIN programs p ON p.Program_id = cp.Program_id
GROUP BY p.category
ORDER BY avg_completion DESC;
