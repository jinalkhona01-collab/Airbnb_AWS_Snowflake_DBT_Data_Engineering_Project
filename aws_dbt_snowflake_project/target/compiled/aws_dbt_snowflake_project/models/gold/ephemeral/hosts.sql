

WITH hosts AS (
    SELECT
        host_id,
        host_name,
        host_since,
        is_superhost,
        response_rate_quality,
        host_created_at
    FROM AIRBNB.gold.obt
)

SELECT * FROM hosts