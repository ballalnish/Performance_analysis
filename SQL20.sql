--Q20. Track Trends in Query Execution Times
SELECT 
    DATE_TRUNC('day', log_timestamp) AS day, 
    AVG(query_time_ms) AS avg_query_time, 
    MAX(query_time_ms) AS max_query_time
FROM queries_log
GROUP BY day
ORDER BY day;


--Purpose: Monitor trends in query performance over time.
