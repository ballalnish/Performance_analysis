--Q18. Identify Queries that Run Concurrently with Errors


SELECT 
    q.query_id, 
    q.query_text, 
    e.error_message, 
    q.log_timestamp
FROM queries_log q
INNER JOIN error_log e ON q.log_timestamp = e.log_timestamp
WHERE q.query_time_ms > 1000
ORDER BY q.log_timestamp;



-- Purpose: Determine if errors occur during long-running queries.