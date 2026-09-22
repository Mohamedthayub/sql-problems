USE PRACTICE;


/*
.

🟢 Level 10 — LIMIT
54. Find the 5 cheapest products.
55. Find the 5 most expensive products.
56. Find the 3 highest-rated products.
57. Find the 3 products with the lowest stock.
58. Find the cheapest Electronics product.

Don't use subqueries.

Think about:

WHERE
ORDER BY
LIMIT
*/

select * from products 
order by  price  asc
limit 5;

select * from products 
order by  price  desc
limit 5;

select * from products 
order by rating desc
limit 3;

select * from products
order by stock asc 
limit 3;

select * from products
where category = 'Electronics'
order by category ASC
limit 1;