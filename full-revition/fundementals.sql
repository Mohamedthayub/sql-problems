use  PRACTICE;


show tables;


/*
1. SQL fundamentals
1. SQL and database basics: Create a database named shop_practice. Explain in your own words what a database, table, row, and column represent in this project.
2. Data types: Create an employees table with id, name, bio, joining_date, is_active, and salary. Choose appropriate PostgreSQL data types.
3. CREATE TABLE: Create a suppliers table with an ID, name, email, and city.
4. INSERT: Insert five suppliers, including one whose city is NULL.
5. SELECT: Retrieve all customers, then retrieve only their names and email addresses.
6. UPDATE and DELETE: Change a customer's city, update a product's price, and delete one supplier. Use WHERE conditions so you affect only the intended rows.
7. DROP, ALTER, TRUNCATE: Add a phone column to customers, change its data type, empty a temporary table using TRUNCATE, and explain the difference between DROP, TRUNCATE, and DELETE.
*/
create database  shop_practice;
create table employee (
    emp_id INT,
    emp_name VARCHAR(20),
    emp_bio VARCHAR(30),
    joining_date DATE,
    is_active BOOLEAN,
    salary INT 
);


create table suppliers (
    suplier_id INT,
    suplier_name VARCHAR(20),
    city VARCHAR(20)
);

TRUNCATE  table  suppliers;
insert into  suppliers values
(1,"Mohamed","Tirunelveli"),
(2,"Mohideen","Tirvandrum"),
(3,"Thayub","Madurai"),
(4,"Test",NULL),
(5,"Buyath","Dindugal");

select * from customers;

select * from suppliers;

select name,email from customers;



update customers  
set city = "Delhi"
where name = "Ahmed";

delete  from customers 
where id  = 5;

-- update c

update  products
set price = 1000
where name  = "SQL Book";

delete from suppliers
where suplier_id = 4;

set price = 1000
where name  = "SQL Book";

delete from suppliers
where suplier_id = 4;


-- alter table customer

select * from customers;


alter table  customers add  is_active boolean;

select * from customers;

