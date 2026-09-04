-- Connect to database
\c learning_db


-- View all products
SELECT *
FROM products;


-- Select specific columns
SELECT name, price
FROM products;


SELECT id, name, price, stock
FROM products;


-- Filtering with WHERE
SELECT *
FROM products
WHERE price > 1000;


SELECT name, price
FROM products
WHERE price > 1000;


SELECT id, name
FROM products
WHERE price = 1200;


-- DISTINCT
SELECT DISTINCT price
FROM products;


SELECT DISTINCT stock
FROM products;


-- DISTINCT with multiple columns
SELECT DISTINCT price, stock
FROM products;


SELECT DISTINCT stock, price
FROM products;


-- ORDER BY
SELECT name, price
FROM products
ORDER BY price ASC;


SELECT name, price
FROM products
ORDER BY price DESC;


SELECT DISTINCT stock
FROM products
ORDER BY stock DESC;


-- LIMIT
SELECT name, price
FROM products
ORDER BY price ASC
LIMIT 5;


SELECT name, price
FROM products
ORDER BY price DESC
LIMIT 3;


-- LIMIT with OFFSET
SELECT name, price
FROM products
ORDER BY price ASC
LIMIT 3
OFFSET 2;


SELECT name, price
FROM products
ORDER BY price DESC
LIMIT 3
OFFSET 3;


SELECT name, price
FROM products
LIMIT 3
OFFSET 6;


-- Column aliases
SELECT name AS product_name,
       price AS product_price
FROM products;


SELECT DISTINCT stock AS unique_stock
FROM products
ORDER BY stock DESC;


SELECT price AS cheapest_price
FROM products
ORDER BY price ASC
LIMIT 5;


-- UPDATE
UPDATE products
SET price = 1400
WHERE id = 1;


UPDATE products
SET price = price + 1000
WHERE id = 3;


UPDATE products
SET stock = stock - 5
WHERE id = 7;


UPDATE products
SET price = price + 200,
    stock = stock - 3
WHERE id = 5;


UPDATE products
SET price = price - 100
WHERE price > 4000;


-- Check updated records
SELECT name, price
FROM products
WHERE id = 3;


SELECT name, stock
FROM products
WHERE id = 7;


SELECT name, price, stock
FROM products
WHERE id = 5;


SELECT name, price
FROM products
WHERE price > 4000;


-- UPDATE with RETURNING
UPDATE products
SET stock = stock - 10
WHERE id = 4
RETURNING id, name, stock;


UPDATE products
SET stock = stock + 5
WHERE stock < 20
RETURNING id, name, stock;