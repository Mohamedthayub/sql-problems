USE PRACTICE

# Find the 5 most expensive active products.

select * from products 
where is_active = 1
order by price DESC limit 5;