--Q1. Find Errors Associated with High Memory Usage

SELECT 
    e.error_message, 
    e.log_timestamp, 
    m.memory_used_mb, 
    m.total_memory_mb, 
    (m.memory_used_mb * 100.0 / m.total_memory_mb) AS memory_utilization
FROM error_log e
INNER JOIN memory_usage_log m ON e.log_timestamp = m.log_timestamp
WHERE (m.memory_used_mb * 100.0 / m.total_memory_mb) > 80
ORDER BY memory_utilization DESC;
