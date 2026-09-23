USE PRACTICE;

-- Find all products between ₹1,000 and ₹3,000, sorted by rating highest to lowest.


select * from products
where price BETWEEN 1000 and 3000
order by rating DESC;