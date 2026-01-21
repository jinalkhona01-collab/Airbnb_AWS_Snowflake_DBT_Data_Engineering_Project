


SELECT
    
        silver_bookings.*,
    
        silver_listings.host_id, silver_listings.property_type, silver_listings.room_type, silver_listings.city, silver_listings.country, silver_listings.accommodates, silver_listings.bedrooms, silver_listings.bathrooms, silver_listings.price_per_night, silver_listings.price_per_night_tag, silver_listings.created_at AS listings_created_at,
    
        silver_hosts.host_name, silver_hosts.host_since, silver_hosts.is_superhost, silver_hosts.response_rate, silver_hosts.response_rate_quality, silver_hosts.created_at AS host_created_at
    
FROM 
    
    
        AIRBNB.SILVER.SILVER_BOOKINGS AS silver_bookings
    
    
    
        LEFT JOIN AIRBNB.SILVER.SILVER_LISTINGS AS silver_listings
        ON silver_bookings.listing_id = silver_listings.listing_id
    
    
    
        LEFT JOIN AIRBNB.SILVER.SILVER_HOSTS AS silver_hosts
        ON silver_listings.host_id = silver_hosts.host_id
    
    