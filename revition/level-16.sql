USE PRACTICE;


/*
🟢 Level 16 — Aliases

Practice:

AS
92. Display product name as product_name.
93. Display price as product_price.
94. Find average price and call it:
average_price
95. Find total stock and call it:
total_stock
96. Count products and call it:
product_count
*/

select name as  product_name from products;

select price as product_price from products;

select avg(price) as average_price from products;

select sum(stock) as total_stock from products;

select count(*) as product_count from products;