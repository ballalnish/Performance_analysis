--Q10. Find Times When Both CPU and Memory Usage Exceeded Thresholds

SELECT 
    c.log_timestamp, 
    c.cpu_usage_percentage, 
    m.memory_used_mb
FROM cpu_usage_log c
INNER JOIN memory_usage_log m ON c.log_timestamp = m.log_timestamp
WHERE c.cpu_usage_percentage > 75 AND m.memory_used_mb > 75
ORDER BY c.log_timestamp;


--Purpose: Highlight periods of critical system stress.
