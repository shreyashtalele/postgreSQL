-- DAY 2
-- PostgreSQL CRUD, DELETE, and UPDATE


-- SELECT with WHERE

SELECT id, name, stock
FROM products
WHERE id = 4;

SELECT name, stock
FROM products
WHERE stock < 20;

SELECT *
FROM products
WHERE id = 10;


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


-- UPDATE with RETURNING

UPDATE products
SET stock = stock - 10
WHERE id = 4
RETURNING id, name, stock;

UPDATE products
SET stock = stock + 5
WHERE stock < 20
RETURNING id, name, stock;


-- DELETE

DELETE FROM products
WHERE id = 10
RETURNING id, name, stock, price;


-- Verify DELETE

SELECT *
FROM products
WHERE id = 10;

SELECT *
FROM products
WHERE stock < 15;