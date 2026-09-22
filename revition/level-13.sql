USE PRACTICE;


/*
.

🟢 Level 13 — Aggregate Functions

Now start:

COUNT()
SUM()
AVG()
MIN()
MAX()
70. Find the total number of products.
71. Find the total stock available.
72. Find the average product price.
73. Find the highest product price.
74. Find the lowest product price.
75. Find the average rating.
76. Find the total number of active products.
77. Find the total number of Electronics products.
78. Find the total stock of Accessories.
*/
select * from products;
select count(name) from products;
select max(stock) from products;

select avg(price) from products;

select max(price) from products;

select min(price) from products;

select avg(rating) from products;

select count(*) from products where is_active = 1;

select count(*) from products where category = 'Electronics';

select count(*) from products where category = 'Accessories';

