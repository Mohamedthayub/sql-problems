USE  PRACTICE;

# Find the 3 cheapest Accessories.

select * from products
where category = 'Accessories'
order by price asc limit 3;