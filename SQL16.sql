--Q16. Identify Unused Memory Periods

SELECT 
    log_timestamp, 
    memory_used_mb, 
    total_memory_mb, 
    (total_memory_mb - memory_used_mb) AS unused_memory_mb
FROM memory_usage_log
WHERE memory_used_mb < (total_memory_mb * 0.2)
ORDER BY log_timestamp;


--Purpose: Detect underutilized memory periods to optimize resource allocation.