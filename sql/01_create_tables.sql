SELECT current_database(), version();


-- 01_create_tables.sql

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    order_date DATE NOT NULL,
    order_time TIME NOT NULL
);

CREATE TABLE pizza_types (
    pizza_type_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    ingredients TEXT
);

CREATE TABLE pizzas (
    pizza_id VARCHAR(50) PRIMARY KEY,
    pizza_type_id VARCHAR(50) NOT NULL REFERENCES pizza_types(pizza_type_id),
    size VARCHAR(10) NOT NULL,
    price NUMERIC(10, 2) NOT NULL CHECK (price >= 0)
);

CREATE TABLE order_details (
    order_details_id INTEGER PRIMARY KEY,
    order_id INTEGER NOT NULL REFERENCES orders(order_id),
    pizza_id VARCHAR(50) NOT NULL REFERENCES pizzas(pizza_id),
    quantity INTEGER NOT NULL CHECK (quantity > 0)
);


--verifiying imports

SELECT 'orders' AS table_name, COUNT(*) AS row_count
FROM orders

UNION ALL

SELECT 'order_details', COUNT(*)
FROM order_details

UNION ALL

SELECT 'pizzas', COUNT(*)
FROM pizzas

UNION ALL

SELECT 'pizza_types', COUNT(*)
FROM pizza_types;
