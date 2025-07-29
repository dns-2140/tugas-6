# 🛒 Toko Database Setup

This project provides SQL commands to set up a basic e-commerce-style database called `toko`. It includes tables for products, users, and orders, along with example data manipulation commands like `INSERT`, `SELECT`, `UPDATE`, and `DELETE`.

---

## 📦 Tables Overview

### 1. `products`

Stores information about items for sale.

| Column        | Type         | Description                 |
| ------------- | ------------ | --------------------------- |
| `id`          | INT          | Primary key, auto-increment |
| `nama_produk` | VARCHAR(255) | Product name                |
| `deskripsi`   | TEXT         | Product description         |
| `harga`       | INT          | Product price               |
| `stok`        | INT          | Number of items in stock    |

---

### 2. `users`

Stores registered users' details.

| Column     | Type         | Description                           |
| ---------- | ------------ | ------------------------------------- |
| `id`       | INT          | Primary key, auto-increment           |
| `name`     | VARCHAR(255) | User’s full name                      |
| `email`    | VARCHAR(255) | Email address                         |
| `password` | VARCHAR(255) | User’s password (plain text for demo) |

---

### 3. `orders`

Stores purchase orders made by users.

| Column       | Type | Description                            |
| ------------ | ---- | -------------------------------------- |
| `order_id`   | INT  | Primary key, auto-increment            |
| `user_id`    | INT  | Foreign key to `users(id)`             |
| `product_id` | INT  | Foreign key to `products(id)`          |
| `quantity`   | INT  | Number of units ordered                |
| `total`      | INT  | Total cost of the order (manual input) |

---

## 🧪 Sample Queries Included

- Create database and tables
- Insert sample data into `products`
- Select all or specific columns
- Update product name or stock
- Delete a product by ID

---

## 🚀 How to Use

### Step 1: Run SQL File

Use MySQL REPL or terminal:

```bash
mysql -u your_username -p < path/to/your_script.sql
```

### Step 2: Check the Data

```bash
USE toko;
SELECT * FROM products;
```
