USE PRACTICE;

-- Find the category with products having an average rating above 4.3.

select category,avg(rating) from products
group by  category 
having avg(rating) > 4.3

