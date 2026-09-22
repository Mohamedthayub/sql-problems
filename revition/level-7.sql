/*
🟢 Level 7 — LIKE

Practice:

LIKE
37. Find products whose name starts with W.

Hint:

LIKE 'W%'
38. Find products whose name ends with e.
39. Find products whose name contains Cable.
40. Find products whose name contains Laptop.
41. Find brands starting with A.
42. Find products containing the word Gaming.
*/

select * from products where  name  like "e%";

select * from products where name like '%Cable%';

select * from products where name like '%Laptop%';

select * from products where brand like 'A%';

select * from  products where  name like '%Gaming%';