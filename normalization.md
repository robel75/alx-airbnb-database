# Normalization of the Airbnb Database Design

## First Normal Form (1NF)

- All attributes are atomic (indivisible).
- No repeating groups in any table.
- Example: User table has fields like email, first_name, etc. — all atomic.

✅ All tables satisfy 1NF.

---

## Second Normal Form (2NF)

- Each non-primary attribute depends on the whole primary key.
- All tables use single-column primary keys (UUIDs), so this is naturally satisfied.

✅ All tables satisfy 2NF.

---

## Third Normal Form (3NF)

- No transitive dependencies.
- All non-primary fields depend only on the primary key.
- Example: Booking.total_price depends only on booking_id, not through other fields.

✅ All tables satisfy 3NF.

---

## Conclusion

The schema is in 3NF. It is clean, avoids redundancy, and supports efficient queries.
