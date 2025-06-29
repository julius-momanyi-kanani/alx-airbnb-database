# Airbnb Clone Database Schema

## 🎯 Objective

This directory contains the SQL DDL script (`schema.sql`) for the Airbnb-like application database. It defines all entities, relationships, and constraints as per the system design.

---

## 📁 Structure

- `schema.sql` – Contains the SQL statements to create the necessary tables, relationships, and indexes.
- `README.md` – This guide.

---

## 🏗️ Tables Defined

1. **users** – Stores guest, host, and admin information.
2. **properties** – Listings created by hosts.
3. **bookings** – Guest reservations for properties.
4. **payments** – Payment records associated with bookings.
5. **reviews** – Guest reviews on properties.
6. **messages** – Internal messaging between users.

---

## ✅ Constraints Implemented

- **Primary Keys** on all tables (`user_id`, `property_id`, etc.).
- **Foreign Keys** to maintain referential integrity (e.g., `host_id` → `users.user_id`).
- **ENUM types** for controlled fields like `role`, `status`, and `payment_method`.
- **CHECK constraint** for valid review ratings (1–5).
- **UNIQUE constraint** on user emails.

---

## 📈 Indexing

Indexes were added to frequently queried columns for optimal performance:

- `users(email)`
- `properties(host_id)`
- `bookings(property_id)`, `bookings(user_id)`
- `payments(booking_id)`
- `reviews(property_id)`

---

## 💡 Usage

Run the schema in a PostgreSQL-compatible environment (or MySQL with modifications to ENUM syntax):

```bash
psql -d airbnb_clone_db -f schema.sql
