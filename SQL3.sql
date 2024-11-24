--Q3. Correlate CPU Usage with Query Execution
SELECT 
    q.query_text, 
    c.cpu_usage_percentage, 
    q.log_timestamp
FROM queries_log q
INNER JOIN cpu_usage_log c ON q.log_timestamp = c.log_timestamp
WHERE c.cpu_usage_percentage > 80
ORDER BY c.cpu_usage_percentage DESC;


--Purpose: Analyze queries executed during high CPU load.