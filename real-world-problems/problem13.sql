USE PRACTICE;


-- Find the highest-rated product.


select * from products
ORDER BY price DESC limit 1;