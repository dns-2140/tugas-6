-- ✅ Create the database if it doesn't already exist
CREATE DATABASE IF NOT EXISTS toko;

-- ✅ Switch to using the 'toko' database
USE toko;

-- ✅ Create 'products' table to store product details
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,       -- Unique ID for each product
    nama_produk VARCHAR(255) NOT NULL,       -- Product name
    deskripsi TEXT,                          -- Product description (optional)
    harga INT NOT NULL,                      -- Product price
    stok INT NOT NULL                        -- Product stock quantity
);

-- ✅ Create 'users' table to store user information
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,       -- Unique ID for each user
    name VARCHAR(255) NOT NULL,              -- User's full name
    email VARCHAR(255) NOT NULL,             -- User's email
    password VARCHAR(255) NOT NULL           -- User's password
);

-- ✅ Create 'orders' table to record purchases
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique ID for each order
    user_id INT NOT NULL,                    -- Reference to the user placing the order
    product_id INT NOT NULL,                 -- Reference to the ordered product
    quantity INT NOT NULL,                   -- Number of units ordered
    total INT NOT NULL,                      -- Total price for the order
    FOREIGN KEY (user_id) REFERENCES users(id),         -- Enforce valid user reference
    FOREIGN KEY (product_id) REFERENCES products(id)    -- Enforce valid product reference
);

-- ✅ Insert a product record into 'products' table
INSERT INTO products(nama_produk, deskripsi, harga, stok)
VALUES("Mac Book Pro", "A laptop from Apple", 1000, 20);

-- ✅ Insert another product record into 'products' table
INSERT INTO products(nama_produk, deskripsi, harga, stok)
VALUES("Iphone 13", "A smartphone from Apple", 700, 90);

-- ✅ View all product data
SELECT * FROM products;

-- ✅ View only product names and prices
SELECT nama_produk, harga FROM products;

-- ✅ Update the name of the product with ID 1
UPDATE products
SET nama_produk = "Mac Book m5"
WHERE id = 1;

-- ✅ Update the stock quantity of 'Iphone 13'
UPDATE products
SET stok = 18
WHERE nama_produk = "Iphone 13";

-- ✅ Delete the product with ID 2
DELETE FROM products
WHERE id = 2;