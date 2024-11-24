--Q5. Find Queries That Triggered Errors

SELECT 
    q.query_text, 
    e.error_message, 
    e.log_timestamp
FROM queries_log q
INNER JOIN error_log e ON q.query_id = q.query_id
ORDER BY e.log_timestamp DESC;



--Purpose: Understand which queries commonly lead to errors.