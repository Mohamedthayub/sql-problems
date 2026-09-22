USE PRACTICE;
/*
🟢 Level 15 — HAVING

Remember the basic difference:

WHERE  → filters rows
HAVING → filters groups
87. Find categories having more than 3 products.
88. Find categories whose average price is greater than ₹2,000.
89. Find brands having more than 1 product.
90. Find categories whose total stock is greater than 30.
91. Find brands whose average rating is greater than 4.3.

*/

select category,count(*) from products
group by  category
having count(*) > 3;

select category,avg(price) from products GROUP BY category 
having avg(price) > 2000; 

select brand, count(*) from products
group by brand having count(*) > 1;

select category,sum(stock) from products
group by category having sum(stock) > 30;


select brand,avg(rating) from products 
group by brand having avg(rating) > 4.3;