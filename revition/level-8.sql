USE PRACTICE;
/*
🟢 Level 8 — DISTINCT
43. Display all unique categories.
44. Display all unique brands.
45. Display all unique ratings.
46. Display unique combinations of category and brand.

Example:

SELECT DISTINCT category, brand
FROM products;
*/


select distinct category from products;
select distinct brand from products;
select distinct rating from products;

select distinct category, brand from products;
