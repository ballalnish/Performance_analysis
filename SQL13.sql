--Q13. Find the Error Codes Associated with Maximum Queries


SELECT 
    e.error_code, 
    COUNT(q.query_id) AS query_count
FROM error_log e
LEFT JOIN queries_log q ON e.log_timestamp = q.log_timestamp
GROUP BY e.error_code
ORDER BY query_count DESC
LIMIT 3;




--Purpose: Determine which error codes correlate with high query activity.
