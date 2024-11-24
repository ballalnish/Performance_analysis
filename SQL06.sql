--Q6. Calculate Hourly Average CPU Usage
SELECT 
    DATE_TRUNC('hour', log_timestamp) AS hour, 
    AVG(cpu_usage_percentage) AS avg_cpu_usage
FROM cpu_usage_log
GROUP BY hour
ORDER BY avg_cpu_usage DESC;



--Purpose: Identify peak CPU usage periods.