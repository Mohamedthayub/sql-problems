USE PRACTICE;

select * from employees;

select * from departments;

/*
1. Display every employee's name and department name, showing only employees with a matching department.
*/
select  e.name,d.department_name from employees as e  inner join departments as d on e.department_id = d.department_id;

/*
2. Display every employee's name and department name, including employees who have no matching department.
*/
select  e.name,d.department_name from employees as e  left join departments as d on e.department_id= d.department_id;


/*
3. Display every department name and its employees, including departments that have no employees.
*/

select d.department_name,e.name from employees as e right join departments as d on e.department_id = d.department_id;


/*
4. Find employees who do not have a matching department.
Use LEFT JOIN and check a department column that cannot be NULL for a real match.
*/

select e.name,d.department_name from employees as e left join departments as d  on e.department_id =  d.department_id;

/*
5. Find departments that have no employees.
Use RIGHT JOIN and filter unmatched departments.

*/
select d.department_name,e.name from employees as e right join departments as d on e.department_id = d.department_id
where e.department_id is NULL;