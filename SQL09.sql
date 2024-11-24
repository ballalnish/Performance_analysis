--Q9. Identify Errors Without High Resource Usage

SELECT 
    e.error_message, 
    e.log_timestamp, 
    c.cpu_usage_percentage, 
    m.memory_used_mb
FROM error_log e
LEFT JOIN cpu_usage_log c ON e.log_timestamp = c.log_timestamp
LEFT JOIN memory_usage_log m ON e.log_timestamp = m.log_timestamp
WHERE c.cpu_usage_percentage < 50 AND m.memory_used_mb < 50
ORDER BY e.log_timestamp;


--Purpose: Focus on errors unrelated to system resource spikes.
