

SELECT 
    booking_id,
    listing_id,
    booking_date,
    
    round(nights_booked * booking_amount, 2)
 + cleaning_fee + service_fee AS total_amount,
    booking_status,
    created_at
FROM AIRBNB.bronze.bronze_bookings