--Q12. Compare Resource Usage During Query Execution Times

SELECT 
    q.query_id, 
    q.query_text, 
    m.memory_used_mb, 
    c.cpu_usage_percentage, 
    q.log_timestamp
FROM queries_log q
INNER JOIN memory_usage_log m ON q.log_timestamp = m.log_timestamp
INNER JOIN cpu_usage_log c ON q.log_timestamp = c.log_timestamp
WHERE c.cpu_usage_percentage > 50 OR m.memory_used_mb > 50
ORDER BY q.log_timestamp;



--Purpose: Analyze resource usage patterns during query execution.
