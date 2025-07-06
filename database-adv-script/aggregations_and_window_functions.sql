SELECT users.id, users.first_name, users.last_name, COUNT(bookings.id) AS total_bookings
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id
GROUP BY users.id, users.first_name, users.last_name;

SELECT properties.id, properties.name, COUNT(bookings.id) AS booking_count,
       RANK() OVER (ORDER BY COUNT(bookings.id) DESC) AS booking_rank
FROM properties
LEFT JOIN bookings ON properties.id = bookings.property_id
GROUP BY properties.id, properties.name;

SELECT properties.id, properties.name, COUNT(bookings.id) AS booking_count,
       ROW_NUMBER() OVER (ORDER BY COUNT(bookings.id) DESC) AS booking_position
FROM properties
LEFT JOIN bookings ON properties.id = bookings.property_id
GROUP BY properties.id, properties.name;
