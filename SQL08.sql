--Q8. Detect Query Overlap During Error Periods
SELECT 
    e.log_timestamp, 
    COUNT(q.query_id) AS num_queries
FROM error_log e
LEFT JOIN queries_log q ON e.log_timestamp = q.log_timestamp
GROUP BY e.log_timestamp
HAVING COUNT(q.query_id) > 0
ORDER BY e.log_timestamp;


--Purpose: Identify heavy query loads that might cause errors.
