--Q11. Which Error Messages Are Most Frequent?

SELECT 
    error_message, 
    COUNT(*) AS error_count
FROM error_log
GROUP BY error_message
ORDER BY error_count DESC
LIMIT 5;


--Purpose: Identify recurring errors to prioritize resolution.
