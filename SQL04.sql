--Q4. Identify Time Periods with No Queries but High Resource Usage

SELECT 
    c.log_timestamp, 
    c.cpu_usage_percentage, 
    m.memory_used_mb
FROM cpu_usage_log c
LEFT JOIN queries_log q ON c.log_timestamp = q.log_timestamp
LEFT JOIN memory_usage_log m ON c.log_timestamp = m.log_timestamp
WHERE q.query_id IS NULL AND (c.cpu_usage_percentage > 75 OR m.memory_used_mb > (SELECT AVG(memory_used_mb) FROM memory_usage_log))
ORDER BY c.log_timestamp;



--Purpose: Detect potential background processes or anomalies.