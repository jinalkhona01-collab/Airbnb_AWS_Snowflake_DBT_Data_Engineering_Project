{{
    config(
        materialized='ephemeral'
    )
}}

WITH listings AS (
    SELECT
         listing_id,
         property_type,
         room_type,
         city,
         country,
         price_per_night_tag,
         listings_created_at
    FROM {{ ref('obt') }}
)

SELECT * FROM listings