

SELECT
    host_id,
    REPLACE(host_name, ' ', '_') AS host_name,
    host_since,
    is_superhost,
    response_rate,
    CASE 
        WHEN response_rate > 95 THEN ' Very Good'
        WHEN response_rate > 80 THEN 'Good'
        WHEN response_rate > 60 THEN 'Fair'
        ELSE 'Poor'
    END AS response_rate_quality,
    created_at
FROM AIRBNB.bronze.bronze_hosts