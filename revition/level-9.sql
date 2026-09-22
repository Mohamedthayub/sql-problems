/*
🟢 Level 9 — ORDER BY
47. Display products from cheapest to most expensive.
48. Display products from most expensive to cheapest.
49. Display products from highest rating to lowest rating.
50. Display products from lowest stock to highest stock.
51. Sort products by category alphabetically.
52. Sort products by price descending.
53. Sort by rating descending and price ascending.

This one is important because it introduces multiple-column sorting.
*/

select * from products
ORDER BY price ;

select * from products
ORDER BY price desc;

select * from  products
order by rating desc;

select * from products
order by  stock;

select * from products 
ORDER BY category;


select  * from products 
order by price desc;

select * from  products
order by rating desc ,price asc;
