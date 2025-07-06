# Index Performance Analysis

## Tables Indexed
- User: email, created_at
- Property: host_id, city, state, price_per_night
- Booking: user_id, property_id, start_date, end_date, status

## Sample Query Tested

sql
EXPLAIN ANALYZE
SELECT *
FROM Booking b
JOIN Property p ON b.property_id = p.id
WHERE p.city = 'San Francisco' AND b.start_date >= '2025-08-01'
ORDER BY b.start_date
LIMIT 20;
