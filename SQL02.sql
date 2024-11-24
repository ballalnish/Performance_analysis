--Q2. Determine the Most Time-Consuming Queries
SELECT 
    q.query_text, 
    q.query_time_ms, 
    q.log_timestamp
FROM queries_log q
ORDER BY q.query_time_ms DESC
LIMIT 5;

--Purpose: Pinpoint slow queries that might impact system performance.