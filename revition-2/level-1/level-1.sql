SHOW DATABASES;


SHOW TABLES;



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
    price NUMERIC(10,2) NOT NULL,
    stock INT DEFAULT 0,
    category_id INT REFERENCES categories(id)
);

/*
SQL Level 1: Fundamentals and filtering
Beginner
 Exercises 1–12
#	Exercise	Expected result
1	Retrieve all customers	All customer records
2	Retrieve only customer names and emails	Selected columns
3	Find customers from Chennai	2 customers
4	Find products costing more than 1,000	Matching products
5	Find products between 500 and 20,000	Matching products
6	Find products with stock less than 10	Matching productsf
7	Find customers whose names start with A	Ahmed, Arun
8	Find products with price equal to 800 or 1,000	2 products
9	Sort products by price descending	Highest price first
10	Retrieve the 3 most expensive products	3 products
11	Find unique customer cities	3 cities
12	Count the total number of customers	5
*/
SELECT * FROM customers;

SELECT name,email from  customers;

SELECT * FROM  customers 
where city  = 'Chennai';

SELECT * FROM products
where price > 1000;

SELECT * from products
where price between 500 AND 20000;

select   * from products 
where stock  < 10;

select * from  customers
where name like "A%";

select * from products
where price = 800 or price = 1000;

select * from products 
order by price desc;


select  * from products
order by price desc limit 3;


select distinct city from customers;


select count(*) from customers;


