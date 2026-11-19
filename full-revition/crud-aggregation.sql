use PRACTICE;
show tables;
/*
Beginner–Intermediate
 Exercises 13–22

13. Insert a new customer named Mohamed from Madurai.

14. Update Ahmed's city to Bangalore.

15. Increase the Laptop price by 10%.

16. Delete the customer named Kumar.

17. Find the total number of products.

18. Calculate the average product price.

19. Find the highest and lowest product prices.

20. Calculate the total stock of all products.

21. Find the number of products in each category.

22. Find categories whose average product price is greater than 1,000.
*/

-- select * from customers;

INSERT INTO customers (id, name, email, city) 
VALUES (5, 'Mohamed', 'mohamed@gmail.com', 'Madurai');

UPDATE  customers 
SET city  = "Bangalore"
where name = 'Ahmed';

UPDATE products 
SET price = price * 1.10
where name = 'Laptop';
show tables;


delete from customers
where name = 'Kumar';


select count(*) as total_products from products;

select avg(price) as product_average_price from products;


select max(price),min(price) from products;

select sum(stock) total_stock_of_products from  products;


select category_id, count(*) from products
group by category_id;

select category_id,avg(price) from products
GROUP BY category_id
having avg(price) > 1000;

select * from products;