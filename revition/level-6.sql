USE PRACTICE;

/*
🟢 Level 6 — IN
34. Find products whose category is either:
Electronics
Accessories

Use:

IN
35. Find products whose brand is one of:
Logitech
JBL
Samsung
36. Find products whose category is NOT:
Electronics
Accessories

Use:

NOT IN
*/


select * from products
where category in ('Electronics','Accessories');

select * from products 
where  brand in ('Logitech','JBL','Samsung');


select * from products
where category not in ('Electronics','Accessories');