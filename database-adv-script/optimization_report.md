# Optimization Report

## Initial Query Analysis
The initial query retrieved all bookings joined with user, property, and payment details. Running EXPLAIN ANALYZE revealed sequential scans on the Booking, User, Property, and Payment tables, indicating no indexes were used on join columns. This caused slower execution due to full table scans.

## Optimization Steps
- Created indexes on key join columns: Booking.user_id, Booking.property_id, and Payment.booking_id.
- Added a WHERE clause to filter bookings by status to reduce the result set.
- Limited the number of results with LIMIT to improve query speed.
- Kept only necessary columns to reduce data volume.

## Results
After optimization, the query executed faster with lower cost, thanks to the use of indexes and reduced dataset size. This approach improves performance, especially on larger datasets.
