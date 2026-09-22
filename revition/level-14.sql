USE PRACTICE;


/*

🟢 Level 14 — GROUP BY

This is an important topic.

79. Count products in each category.

Expected concept:

Electronics → ?
Accessories → ?
Bags → ?
Wearables → ?
80. Find the average price of each category.
81. Find the maximum price in each category.
82. Find the minimum price in each category.
83. Find the total stock for each category.
84. Count products for each brand.
85. Find the average rating for each brand.
86. Find the total stock available for each brand.
*/

select category,count(*) from products
group by  category;


select category,avg(price) from products 
GROUP BY category;

select category,max(price) from products
GROUP BY  category;

select category,min(price) from products GROUP BY category;

select category,sum(stock) from products  GROUP BY category;

select brand,count(*) from products group by brand;

select brand,avg(rating) from products group by brand;

select brand,sum(stock) from products group by brand;