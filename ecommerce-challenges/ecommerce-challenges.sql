USE PRACTICE;

-- Find all active Electronics products costing between ₹1,000 and ₹3,000.

select * from products
where is_active = 1 and  price  between  1000 and 3000;
-- Find the 3 highest-rated products that have stock greater than 10

select * from products
where  stock > 10 
order by rating desc limit 3;


/*
Challenge 3

Show each category with:

category
number_of_products
average_price
total_stock
*/
select category,count(*) as number_of_products ,avg(price) as average_price ,sum(stock) as total_stock
from products group by category;

/*
Challenge 4
Show brands having more than one product.
Return:
brand
product_count
*/
select brand, count(*) from products
group by brand
having COUNT(*) > 1;


/*
Challenge 5

Find the total value of inventory for every category.

Formula:

price × stock

Return:

category
total_inventory_value
*/

select category,sum(price * stock) as total_inventory_value from products
GROUP BY category;


/*
Challenge 6

Find all products that:

are active
cost less than ₹2,000
have rating ≥ 4.3
have stock > 10
*/

select * from products
where is_active = 1 and rating >= 4.3 and  stock > 10 and price < 2000;


/*
Challenge 7

Find the top 5 products based on:

price × stock

This is a very useful real-world query.
*/

select name, (price * stock ) as total_inventory from  products
order by total_inventory desc  limit 5;

/*
Challenge 8

Find categories where:

product count > 2
average price > ₹1,000

You'll need:

GROUP BY
HAVING
*/


select category,count(*) as total_count,avg(price) as average_price from products
GROUP BY category
having COUNT(*) > 2 and avg(price)  > 1000;