USE PRACTICE;



SELECT e.employee_id,e.name,d.department_name FROM employees e INNER JOIN  departments d ON e.department_id = d.department_id;


select e.employee_id,e.name,d.department_name from employees e inner join  departments d on e.department_id = d.department_id;

-- INNER JOIN — Only matching rows
-- An INNER JOIN returns rows where the join condition matches in both tables.



/*
Remember: LEFT JOIN keeps all rows from the left table, even when there is no match.
The left and right sides depend on the order of tables in your query.
*/
select e.employee_id,e.name,d.department_name from employees e right join departments d  on e.department_id = d.department_id;
select e.employee_id,e.name,e.department_id from employees e left join departments d on e.department_id = d.department_id;


select e.employee_id,e.name,e.department_id from employees e left join departments d on e.department_id = d.department_id;


select e.employee_id,e.name,e.department_id from employees e inner join departments d on e.department_id = d.department_id
order by  name;
-- inner join is use to what row are matching 


select e.employee_id,e.name,e.department_id from employees e left join departments d on e.department_id = d.department_id
order by  name;
-- left join 


select e.employee_id,e.name,e.department_id from employees e right join departments d on e.department_id = d.department_id
order by  name;
-- right join 