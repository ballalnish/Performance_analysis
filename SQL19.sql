--Q19. Detect the Time Periods with the Highest System Resource Usage

SELECT 
    e.log_timestamp AS error_time,
    q.query_text AS query_during_error,
    m.memory_used_mb AS memory_during_error,
    c.cpu_usage_percentage AS cpu_during_error
FROM error_log e
LEFT JOIN queries_log q ON e.log_timestamp = q.log_timestamp
LEFT JOIN memory_usage_log m ON e.log_timestamp = m.log_timestamp
LEFT JOIN cpu_usage_log c ON e.log_timestamp = c.log_timestamp
WHERE e.log_timestamp BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY e.log_timestamp;

--Purpose: Pinpoint the most resource-intensive time periods.
