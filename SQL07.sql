--Q7. Analyze Memory Usage Trends Over Time
SELECT 
    DATE_TRUNC('day', log_timestamp) AS day, 
    AVG(memory_used_mb) AS avg_memory_usage, 
    MAX(memory_used_mb) AS peak_memory_usage
FROM memory_usage_log
GROUP BY day
ORDER BY day;



--Purpose: Track memory usage patterns.

