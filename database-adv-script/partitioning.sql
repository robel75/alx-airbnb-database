ALTER TABLE Booking RENAME TO Booking_old;

CREATE TABLE Booking (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50),
  
    CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES "User"(id),
    CONSTRAINT fk_property FOREIGN KEY(property_id) REFERENCES Property(id)
) PARTITION BY RANGE (start_date);


CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

INSERT INTO Booking (id, user_id, property_id, start_date, end_date, status)
SELECT id, user_id, property_id, start_date, end_date, status FROM Booking_old;

DROP TABLE Booking_old;
