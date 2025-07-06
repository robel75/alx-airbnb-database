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
