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

--display each order id with its status and customer name 
select o.order_id,o.status,c.customer_name  from customers as c  inner join  orders as o ;

-- display each product name  and its  price  alongside the quantity ordered;
select p.product_name , p.price, o.quantity from products as p inner join   order_items as o  ON p.product_id = o.product_id;

-- display all products and their order-item quantities,including products never ordered;


-- find the names of customers who have placed orders;
select  c.customer_name  from customers as c inner join orders as o on c.customer_id = o.customer_id;


-- display orders with status  'Delivered' and the   corresponding  customer names;

select c.customer_name from customers as c inner join orders as o ON  c.customer_id =  o.customer_id
where status = 'Delivered';

-- display all products in the Electronics category that have been ordered;
select p.product_name from products as p inner join  order_items as  o on  p.product_id = o.product_id
where category = 'Electronics';
