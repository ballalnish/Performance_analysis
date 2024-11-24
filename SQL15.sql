--Q15. Find Queries Executed During the 5 Most Recent Errors

SELECT 
    e.error_id, 
    e.error_message, 
    q.query_text, 
    q.log_timestamp
FROM error_log e
LEFT JOIN queries_log q ON e.log_timestamp = q.log_timestamp
ORDER BY e.log_timestamp DESC
LIMIT 5;


--Purpose: Correlate recent errors with executed queries.