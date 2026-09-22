USE PRACTICE;


select * from products;

/*
🟢 Level 12 — DELETE
66. Delete the Smart Watch.
67. Delete products whose stock is 0.
68. Delete products belonging to the Bags category.
69. Delete products whose price is less than ₹500.

Don't actually run dangerous deletes until you've checked the matching rows with SELECT.
*/

delete  from  products  where  name  = 'Smart Watch' ;
delete from  products where stock = 0;

delete  from products  where name = 'Backpack';

delete from products where price <  500;
select * from products;