USE PRACTICE;

/*
🟢 Level 11 — UPDATE

Now practice modifying data.

59. Change Wireless Mouse price to ₹899.
60. Increase Mechanical Keyboard price to ₹2,699.
61. Change Wireless Mouse stock to 30.
62. Set Smart Watch as active.
63. Change the brand of Power Bank to Xiaomi.
64. Increase the price of all Accessories by ₹100.

Be careful with this one.

65. Reduce the stock of all Electronics products by 2.

Important: Before running an UPDATE, use a SELECT with the same WHERE condition to check which rows will be affected.
*/

update  products set price = 899
where name  = 'Wireless Mouse';


update products set price = price + 200
where name  = 'Mechanical Keyboard';

update products set stock = stock + 5 where name = 'Wireless Mouse';

update products set is_active = 1 where  name = 'Smart Watch';

update  products set name= 'Xiaomi' where name  = 'Power Bank';

update products set price = price + 100;

update products set stock = stock - 2  where category = 'Electronics';