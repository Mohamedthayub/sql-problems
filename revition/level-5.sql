USE PRACTICE;

/*
.
🟢 Level 5 — BETWEEN
30. Find products between ₹500 and ₹2,000.

Use:

BETWEEN
31. Find products with stock between 10 and 30.
32. Find products with rating between 4.0 and 4.5.
33. Find products priced between ₹1,000 and ₹3,000 AND belonging to Electronics.
*/

select * from products where  price between 500 and 1000;

select  * from products where  stock between 10 and 30;

select * from products where  rating between 4.0 and 4.5;

select * from  products where (price between 1000 and 3000) and (category  = 'Electronics');