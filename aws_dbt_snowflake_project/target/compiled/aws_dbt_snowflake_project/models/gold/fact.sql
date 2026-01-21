


SELECT
        gold_obt.booking_id, gold_obt.listing_id, gold_obt.host_id,gold_obt.total_amount, gold_obt.accommodates, gold_obt.bedrooms, gold_obt.bathrooms, gold_obt.price_per_night, gold_obt.response_rate
FROM 
    
    
        AIRBNB.GOLD.OBT AS gold_obt
    
    
    
        LEFT JOIN AIRBNB.GOLD.DIM_LISTINGS AS dim_listings
        ON gold_obt.listing_id = dim_listings.listing_id
    
    
    
        LEFT JOIN AIRBNB.GOLD.DIM_HOSTS AS dim_hosts
        ON gold_obt.host_id = dim_hosts.host_id
    
    