CREATE DATABASE IF NOT EXISTS JOIN_PRACTICE;
USE JOIN_PRACTICE;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(30),
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),
    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);


INSERT INTO customers VALUES
(1, 'Arun', 'Chennai'),
(2, 'Kumar', 'Madurai'),
(3, 'Ravi', 'Tirunelveli'),
(4, 'Priya', 'Coimbatore'),
(5, 'Sara', 'Chennai'),
(6, 'Imran', 'Salem');

INSERT INTO products VALUES
(101, 'Mouse', 'Electronics', 800),
(102, 'Keyboard', 'Electronics', 2500),
(103, 'USB Cable', 'Accessories', 300),
(104, 'Monitor', 'Electronics', 12000),
(105, 'Laptop Stand', 'Accessories', 1500),
(106, 'Backpack', 'Bags', 2000),
(107, 'Webcam', 'Electronics', 1800),
(108, 'Desk Mat', 'Accessories', 600);

INSERT INTO orders VALUES
(1001, 1, '2026-10-01', 'Delivered'),
(1002, 1, '2026-10-05', 'Delivered'),
(1003, 2, '2026-10-07', 'Pending'),
(1004, 3, '2026-10-10', 'Cancelled'),
(1005, 4, '2026-10-12', 'Delivered'),
(1006, 2, '2026-10-15', 'Delivered'),
(1007, 5, '2026-10-18', 'Pending');

INSERT INTO order_items VALUES
(1, 1001, 101, 2),
(2, 1001, 103, 3),
(3, 1002, 102, 1),
(4, 1002, 107, 1),
(5, 1003, 104, 1),
(6, 1003, 103, 2),
(7, 1004, 105, 1),
(8, 1005, 106, 2),
(9, 1006, 101, 1),
(10, 1006, 108, 4),
(11, 1007, 102, 1),
(12, 1007, 105, 2);
SHOW TABLES;


