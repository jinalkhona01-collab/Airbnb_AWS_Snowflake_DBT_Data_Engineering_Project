

SELECT
    listing_id,
    host_id,
    property_type,
    room_type,
    city,
    country,
    accommodates,
    bedrooms,
    bathrooms,
    price_per_night,
    
    CASE 
        WHEN CAST(price_per_night AS INT) < 100 THEN 'low'
        WHEN CAST(price_per_night AS INT) < 200 THEN 'medium'
        ELSE 'high'
    END
 AS price_per_night_tag,
    created_at
FROM AIRBNB.bronze.bronze_listings