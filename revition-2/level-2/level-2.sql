
/*
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


USE PRACTICE;

select * from customers;

insert into  customers VALUES
(6,'Mohamed','mohamed@gmail.com','Madurai','2026-11-05 15:11:20')

UPDATE  customers
SET  city = "Bangalore"

update products  set price = price  * 1.10
where  name = 'Laptop';


select * from products;
delete from customers 
where name = 'Kumar'

select count(*)  as total_number_of_products from products 

select avg(price) from products;

select max(price) as highest_price,min(price) as lowest_price  from products;

select sum(stock) from  products;


select category_id, count(*) as products_count from  products
group by category_id;

select  category_id, avg(price) from products
group by category_id
having  avg(price) > 1000;

