

WITH bookings AS (
    SELECT
        booking_id,
        booking_date,
        booking_status,
        created_at 
    FROM AIRBNB.gold.obt
)

SELECT * FROM bookings