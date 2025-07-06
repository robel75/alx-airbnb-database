SELECT properties.id,properties.name,properties.location
FROM properties WHERE(SELECT AVG(rating) FROM reviews WHERE reviews.property_id= properties.id)>4.0;

SELECT id,first_name,last_name, email FROM users WHERE (SELECT COUNT(*) FROM bookings WHERE bookings.user_id= user.id)>3;
