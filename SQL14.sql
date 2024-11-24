--Q14. Detect Resource Bottlenecks by Identifying Query Overlap

SELECT 
    q.query_id, 
    COUNT(m.usage_id) AS overlapping_memory_logs, 
    COUNT(c.usage_id) AS overlapping_cpu_logs
FROM queries_log q
LEFT JOIN memory_usage_log m ON q.log_timestamp = m.log_timestamp
LEFT JOIN cpu_usage_log c ON q.log_timestamp = c.log_timestamp
GROUP BY q.query_id
HAVING COUNT(m.usage_id) > 1 OR COUNT(c.usage_id) > 1
ORDER BY overlapping_memory_logs DESC, overlapping_cpu_logs DESC;


--Purpose: Identify queries running during multiple resource-intensive periods.
