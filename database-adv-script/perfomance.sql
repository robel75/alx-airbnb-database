EXPLAIN
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    b.status,
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email,
    p.id AS property_id,
    p.title AS property_title,
    p.city,
    p.price_per_night,
    pay.id AS payment_id,
    pay.amount,
    pay.payment_date,
    pay.status AS payment_status
FROM Booking b
JOIN "User" u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
LEFT JOIN Payment pay ON pay.booking_id = b.id;
