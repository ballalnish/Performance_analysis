--Q17. Aggregate System Performance by Hour

SELECT 
    DATE_TRUNC('hour', e.log_timestamp) AS hour, 
    COUNT(e.error_id) AS error_count,
    COUNT(q.query_id) AS query_count,
    COUNT(m.usage_id) AS memory_log_count,
    COUNT(c.usage_id) AS cpu_log_count
FROM error_log e
LEFT JOIN queries_log q ON DATE_TRUNC('hour', e.log_timestamp) = DATE_TRUNC('hour', q.log_timestamp)
LEFT JOIN memory_usage_log m ON DATE_TRUNC('hour', e.log_timestamp) = DATE_TRUNC('hour', m.log_timestamp)
LEFT JOIN cpu_usage_log c ON DATE_TRUNC('hour', e.log_timestamp) = DATE_TRUNC('hour', c.log_timestamp)
GROUP BY DATE_TRUNC('hour', e.log_timestamp)
ORDER BY hour;


-- Purpose: Get an overview of system performance trends hourly.