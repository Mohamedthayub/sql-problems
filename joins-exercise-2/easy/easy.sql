USE PRACTICE;

-- display  each order id  alongside the customer name 
select o.order_id,c.customer_name from customers as c inner join orders as o 
on  o.customer_id = c.customer_id;

-- display each customers name and city alongside their own order date
select  c.customer_name , c.city,o.order_date from customers as c inner join orders as o 
on c.customer_id = o.customer_id;

--  display all customers and their orderIDs, including  customers who have never ordered
SELECT c.customer_name, o.order_id
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id;
select * from customers;
select * from orders;
