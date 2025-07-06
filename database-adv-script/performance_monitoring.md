# Performance Monitoring and Refinement Report

## Queries Monitored
We used EXPLAIN ANALYZE on frequently executed queries, such as retrieving confirmed bookings in specific cities ordered by date.

## Bottlenecks Identified
- Full table scan on Booking for status = 'confirmed'
- Full scan on Property for filtering by city
- Slow sorting on b.start_date

## Changes Implemented
- Created index on Booking(status)
- Created index on Property(city)

## Results
After applying the indexes:
- Query execution time decreased significantly.
- The query plan switched from sequential scans to index scans.
- Sorting was faster due to more efficient filtering.

## Conclusion
Regular monitoring with EXPLAIN ANALYZE helped identify performance bottlenecks and validate that adding indexes improved the database response time.
