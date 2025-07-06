CREATE INDEX idx_user_email ON "User"(email);
CREATE INDEX idx_user_created_at ON "User"(created_at);

CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_city_state ON Property(city, state);
CREATE INDEX idx_property_price ON Property(price_per_night);

CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date);
CREATE INDEX idx_booking_status ON Booking(status);

EXPLAIN ANALYZE
SELECT *
FROM Booking b
JOIN Property p ON b.property_id = p.id
WHERE p.city = 'San Francisco'
  AND b.start_date >= '2025-08-01'
ORDER BY b.start_date
LIMIT 20;
