USE PRACTICE;

-- Find the lowest-priced active product

select * from  products
where is_active = 1
order by price asc limit 1;