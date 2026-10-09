use PRACTICE;

SHOW TABLES;

/*
Level 1 — INNER JOIN
Exercise 1

Display the customer name and order ID for every order.

Think:

customers + orders
*/

SELECT E.EMP_NAME, B.BRANCH_NAME FROM EMPLOYEE AS E  INNER JOIN BRANCH  AS B 
ON  E.`BRANCH_ID` = B.`BRANCH_ID`;


/*
Exercise 2

Display:

customer name
order date

for every order.
*/
SELECT