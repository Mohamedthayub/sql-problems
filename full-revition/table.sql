use PRACTICE;

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    city VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    stock INT DEFAULT 0,
    category_id INT REFERENCES categories(id)
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id),
    total_amount NUMERIC(10, 2),
    status VARCHAR(30),
    order_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE order_items (
    id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(id),
    product_id INT REFERENCES products(id),
    quantity INT NOT NULL,
    unit_price NUMERIC(10, 2) NOT NULL
);

INSERT INTO customers (name, email, city) VALUES
('Ahmed', 'ahmed@gmail.com', 'Chennai'),
('Rahman', 'rahman@gmail.com', 'Tirunelveli'),
('Thayub', 'thayub@gmail.com', 'Tirunelveli'),
('Arun', 'arun@gmail.com', 'Coimbatore'),
('Kumar', 'kumar@gmail.com', 'Chennai');

INSERT INTO categories (name) VALUES
('Electronics'), ('Clothing'), ('Books');

INSERT INTO products (name, price, stock, category_id) VALUES
('Laptop', 50000, 5, 1),
('Mobile', 20000, 10, 1),
('T-Shirt', 500, 30, 2),
('Jeans', 1200, 15, 2),
('SQL Book', 800, 20, 3),
('PostgreSQL Book', 1000, 8, 3);


INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 50000),
(2, 2, 1, 20000),
(3, 4, 1, 1200),
(3, 5, 1, 300),
(4, 5, 1, 1000),
(5, 4, 1, 1200),
(6, 3, 1, 500);

