/*
🟢 Level 4 — AND / OR / NOT
22. Find Electronics products costing more than ₹1,000.
23. Find products with price less than ₹1,000 AND stock greater than 20.
24. Find products with rating greater than 4.5 AND stock greater than 10.
25. Find products from Logitech OR JBL.
26. Find products from Electronics OR Accessories.
27. Find products that are NOT in Electronics.
28. Find products that are active AND have stock greater than 10.
29. Find products that are inactive OR have stock less than 10.
*/

select * from products where price > 1000;
select * from  products where price < 1000 and stock > 20;

select * from products where rating > 4.5 and stock > 10;

select * from products where  brand = 'Logitech' or brand = 'JBL';

select * from products where  category = 'Electronics' or category = 'Accessories';

select * from products where not category = 'Electronics';

select * from products where  is_active = 1 and stock > 10;

select * from products where  is_active = 0 or stock < 10;