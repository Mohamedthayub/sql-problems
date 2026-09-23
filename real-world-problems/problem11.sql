USE PRACTICE;


-- Find brands with at least 2 products.

select brand,COUNT(*) from products
GROUP BY brand
having COUNT(*) = 2;