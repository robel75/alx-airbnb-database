# Airbnb Advanced SQL Joins

This directory contains advanced SQL queries using different types of joins to practice complex relational queries.

## File: joins_queries.sql

### 1. INNER JOIN
Retrieves all bookings along with the users who made them.
- Tables: bookings, users
- Join: INNER JOIN

### 2. LEFT JOIN
Retrieves all properties and their corresponding reviews (if any).
- Tables: properties, reviews
- Join: LEFT JOIN

### 3. FULL OUTER JOIN
Retrieves all users and all bookings, including:
- Users without bookings
- Bookings not linked to any user
- Emulated using UNION for MySQL compatibility
## Usage
Run each query in your SQL environment to verify and test results.

___________________________________________________________

# Subqueries — ALX Airbnb Database

This file contains advanced SQL queries using subqueries to retrieve filtered results from the Airbnb clone database. The queries demonstrate both non-correlated and correlated subqueries, useful for data aggregation and filtering based on related tables.

## File: subqueries.sql

### 1. Non-Correlated Subquery

Query:  
Find all properties where the average rating is greater than 4.0.

sql
SELECT properties.id, properties.name, properties.location
FROM properties
WHERE (
    SELECT AVG(rating)
    FROM reviews
    WHERE reviews.property_id = properties.id
) > 4.0;
SELECT id, first_name, last_name, email
FROM users
WHERE (
    SELECT COUNT(*)
    FROM bookings
    WHERE bookings.user_id = users.id
) > 3;

____________________________________________


# database-adv-script

## File: aggregations_and_window_functions.sql

This SQL script demonstrates the use of aggregation and window functions to analyze booking data for the ALX Airbnb clone database.

## Queries

### 1. Total Number of Bookings Per User

sql
SELECT users.id, users.first_name, users.last_name, COUNT(bookings.id) AS total_bookings
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id
GROUP BY users.id, users.first_name, users.last_name;

### 2. Ranking properties by bookings
SELECT properties.id, properties.name, COUNT(bookings.id) AS booking_count,
       RANK() OVER (ORDER BY COUNT(bookings.id) DESC) AS booking_rank
FROM properties
LEFT JOIN bookings ON properties.id = bookings.property_id
GROUP BY properties.id, properties.name;

### 3. Ranking Properties with ROW_NUMBER

sql
SELECT properties.id, properties.name, COUNT(bookings.id) AS booking_count,
       ROW_NUMBER() OVER (ORDER BY COUNT(bookings.id) DESC) AS booking_position
FROM properties
LEFT JOIN bookings ON properties.id = bookings.property_id
GROUP BY properties.id, properties.name;
