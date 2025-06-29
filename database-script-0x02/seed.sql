-- Sample data to populate Airbnb clone database

-- USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('00000000-0000-0000-0000-000000000001', 'Alice', 'Smith', 'alice@example.com', 'hashed_pw1', '0711000001', 'guest'),
  ('00000000-0000-0000-0000-000000000002', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pw2', '0711000002', 'host'),
  ('00000000-0000-0000-0000-000000000003', 'Carol', 'Lee', 'carol@example.com', 'hashed_pw3', '0711000003', 'guest');

-- PROPERTIES
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Sunny Apartment', '2-bedroom with ocean view', 'Nairobi, Kenya', 45.00),
  ('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', 'Cozy Cottage', 'Quiet place in the hills', 'Naivasha, Kenya', 60.00);

-- BOOKINGS
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '2024-08-01', '2024-08-03', 90.00, 'confirmed'),
  ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000003', '2024-08-05', '2024-08-07', 120.00, 'pending');

-- PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('30000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 90.00, 'paypal');

-- REVIEWS
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('40000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 5, 'Amazing view and great location!');

-- MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('50000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Hi Bob, is the apartment available for late check-in?'),
  ('50000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Yes, no problem at all!');
