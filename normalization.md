# Database Normalization – Airbnb Clone

## 📌 Objective
To ensure that our Airbnb-like database schema is normalized up to **Third Normal Form (3NF)** to minimize redundancy, avoid anomalies, and ensure data integrity.

---

## 🧠 Understanding Normalization

Normalization is the process of structuring a relational database in a way that:
- Eliminates redundant data,
- Ensures logical data dependencies,
- Improves overall efficiency and scalability.

---

## ✅ First Normal Form (1NF)
**Rule:** Each table column must have atomic (indivisible) values, and each record must be unique.

**How We Achieve This:**
- All columns contain atomic values (e.g., `email`, `first_name`, `location`).
- No repeating groups or arrays are present.
- Each table has a **Primary Key** to uniquely identify records.

---

## ✅ Second Normal Form (2NF)
**Rule:** Meet 1NF, and all non-key attributes must be fully functionally dependent on the entire primary key.

**How We Achieve This:**
- All tables with compound foreign keys (like in `Booking` or `Review`) have only one-column primary keys (`UUID`), so full dependency is satisfied.
- No partial dependencies on a subset of a composite key.

---

## ✅ Third Normal Form (3NF)
**Rule:** Meet 2NF, and no transitive dependencies exist (i.e., non-key columns must not depend on other non-key columns).

**How We Achieve This:**
- No derived or computed columns (e.g., `total_price` is assumed to be application logic).
- Attributes like `pricepernight` are only stored in the `Property` table, not repeated elsewhere.
- `payment_method`, `status`, `role`, etc., are handled via controlled ENUMs rather than stored descriptions.

---

## 🧩 Normalization Summary by Table

| Table      | Normalized to 3NF? | Notes |
|------------|--------------------|-------|
| User       | ✅ Yes             | All attributes atomic, no transitive dependencies |
| Property   | ✅ Yes             | `host_id` references User, price stored in one place |
| Booking    | ✅ Yes             | Fully depends on `booking_id`, no derived fields |
| Payment    | ✅ Yes             | `amount` and `method` tied directly to `booking_id` |
| Review     | ✅ Yes             | Ratings and comments are atomic, tied directly to user/property |
| Message    | ✅ Yes             | Sender/recipient are FK references to users |

---

## 💡 Final Thoughts

Our schema satisfies **3NF**:
- No redundant data,
- Logical relationships via foreign keys,
- Clean separation of concerns between entities.

These steps will ensure that the database is efficient, scalable, and maintainable.
