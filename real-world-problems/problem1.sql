USE PRACTICE;

#Find all active products costing less than ₹2,000.

select * from products
where is_active = 1  AND  price < 2000;