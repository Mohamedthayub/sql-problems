USE PRACTICE;

-- Find categories with total inventory value greater than ₹20,000

select category,sum(price) from  products
GROUP BY category
having sum(price) > 20000;