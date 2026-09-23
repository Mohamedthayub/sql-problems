USE PRACTICE;

-- Find the total stock of Electronics products. 

select sum(stock) from products
where category = 'Electronics';