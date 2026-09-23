USE PRACTICE;
-- Find the average price of active products.

select avg(price) from products
where is_active = 1;