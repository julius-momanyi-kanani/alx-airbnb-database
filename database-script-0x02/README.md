# Airbnb Clone Sample Data Seeding

## 📦 Purpose

This script (`seed.sql`) inserts realistic sample data into the Airbnb clone database, populating all major entities like users, properties, bookings, payments, reviews, and messages.

---

## 📁 Files

- `seed.sql` – SQL `INSERT` statements to populate tables
- `README.md` – This documentation

---

## ✅ Sample Data Highlights

### 👤 Users
- 3 users: 2 guests, 1 host
- All have unique emails and valid roles

### 🏠 Properties
- 2 listings owned by the host
- Located in Nairobi and Naivasha

### 📅 Bookings
- 2 bookings made by guests
- Includes both confirmed and pending statuses

### 💳 Payments
- Linked to one confirmed booking
- Uses PayPal as the payment method

### 🌟 Reviews
- Review written by a guest for a property

### 💬 Messages
- Example of communication between a guest and a host

---

## 🛠️ Usage

After running your schema (`schema.sql`), execute:

```bash
psql -d airbnb_clone_db -f seed.sql
