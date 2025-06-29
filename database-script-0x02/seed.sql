-- Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, role)
VALUES
  (UUID(), 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw_1', 'guest'),
  (UUID(), 'Bob', 'Smith', 'bob@example.com', 'hashed_pw_2', 'host');

-- Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  (UUID(), 'host-user-id-1', 'Cozy Cottage', 'A lovely 2-bedroom home', 'Paris', 120.00);
