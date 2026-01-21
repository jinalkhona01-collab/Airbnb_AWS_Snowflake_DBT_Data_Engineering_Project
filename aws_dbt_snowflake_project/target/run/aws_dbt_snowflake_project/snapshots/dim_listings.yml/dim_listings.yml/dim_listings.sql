
      
  
    

create or replace transient table AIRBNB.gold.dim_listings
    
    
    
    as (
    

    select *,
        md5(coalesce(cast(listing_id as varchar ), '')
         || '|' || coalesce(cast(listings_created_at as varchar ), '')
        ) as dbt_scd_id,
        listings_created_at as dbt_updated_at,
        listings_created_at as dbt_valid_from,
        
  
  coalesce(nullif(listings_created_at, listings_created_at), to_date('9999-12-31'))
  as dbt_valid_to
from (
        with __dbt__cte__listings as (


WITH listings AS (
    SELECT
         listing_id,
         property_type,
         room_type,
         city,
         country,
         price_per_night_tag,
         listings_created_at
    FROM AIRBNB.gold.obt
)

SELECT * FROM listings
) select * from __dbt__cte__listings
    ) sbq



    )
;


  
  