CREATE DATABASE learning_db;

\c learning_db

CREATE SCHEMA ecommerce;

CREATE TABLE ecommerce.products (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price NUMERIC(10,2) NOT NULL CHECK (price >= 0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0)
);


INSERT INTO products (id, name, price, stock)
VALUES
    (1, 'Wireless Mouse', 1200, 50),
    (2, 'Mechanical Keyboard', 3500, 20),
    (3, 'Monitor', 15000, 10),
    (4, 'USB-C Cable', 600, 100),
    (5, 'Laptop Stand', 1800, 30),
    (6, 'Webcam', 2500, 15),
    (7, 'Headphones', 4500, 25),
    (8, 'Desk Lamp', 1200, 40),
    (9, 'External SSD', 7500, 12),
    (10, 'Mouse Pad', 500, 80);


    