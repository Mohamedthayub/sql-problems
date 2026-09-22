USE PRACTICE;


/*
Level 3 — Comparison Operators

Practice:

>
<
>=
<=
=
!=
16. Price greater than or equal to ₹2,000.
17. Price less than or equal to ₹1,500.
18. Rating greater than or equal to 4.5.
19. Stock less than 10.
20. Products whose brand is not Logitech.
21. Products whose category is not Electronics.
*/
select * from products where  price > 2000 or price >= 2000;
select * from products where  price < 1500 or price <= 1500;

select * from products where rating  > 4.5 or rating >= 4.5;

select * from products where stock < 10;

select * from products where not brand  =  "Logitech";

select * from products where not category  =  "Electronics";

