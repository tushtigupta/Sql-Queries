create database joints;

use joints;

create table Employees(
emp_id int primary key,
emp_name  Varchar(30),
dept_id int
);

drop table Employees;

create table Employees(
emp_id int primary key auto_increment,
emp_name  Varchar(30),
dept_id int,
salary int
);

insert into Employees(emp_id,emp_name,dept_id,salary)
values(1,"Alice",101,6000),
(2,"Bob",102,7000),
(3,"Charlie",103,8000),
(4,"David",104,7500),
(5,"Eve",105,8500);


#1 Retrieve the employee name and department name for each employee.

Select emp_name,dept_name
from employees e
left join departments d  
on e.dept_id = d.dept_id;

select emp_name, project_name
from employees e
Right Join projects p
on e.dept_id=p.dept_id;

select * from departments;

#2 Find all the employees who work in "Sales" department.

Select e.emp_id,e.emp_name,e.salary,d.dept_name
from employees e
Join departments d
on e.dept_id=d.dept_id;

#3  List the project names along with department.
Select p.project_name, d.dept_name
from projects p
Join departments d
on p.dept_id=d.dept_id;

#4 Find the employees(name) who have salary greater than 7500 and who are working on a project in "IT" deparment
Select e.emp_name, d.dept_name
from employees e
join departments d
on e.dept_id=d.dept_id
where d.dept_name="IT"  and e.salary>7500;

#5 Find the numbers of employees in each department.
Select dept_name, count(emp_id)
from employees e
INNER JOIN departments d
on e.dept_id=d.dept_id
group by dept_name;

#6 Get total salary of each department.
Select dept_name, sum(salary) AS Salary
from employees e
INNER JOIN departments d
on e.dept_id=d.dept_id
group by dept_name;
 
 #7 Find the employee and project name for employees in "HR" department.
Select e.emp_name, p.project_name
from employees e
inner join departments d
on d.dept_id=e.dept_id
inner join projects p
on e.dept_id=p.dept_id
where d.dept_name="HR";

#8 Find all the departments that have no employees
select d.dept_id,d.dept_name
from departments d
left join employees e
on d.dept_id=e.dept_id
where e.dept_id= null ;

#9 List the employee names and their respective project name
select e.emp_name,p.project_name
from employees e
inner  join  departments d
on e.dept_id=d.dept_id
inner join projects p
on e.dept_id=p.dept-id;

#10 Retrieve departments in more one project
select d.dept_name,count(p.project_name)
from departments d
left join projects p 
on d.dept_id=p.dept_id
group by d.dept_name
having count(p.project_name) ;

#11 find employees who work in departments that are not assigned any projects
select d.dept_name,e.emp_id
from employees e
left join departments d 
on e.dept_id=d.dept_id
left join 
projects p 
on d.dept_id=p.dept_id 
group by d.dept_name,e.emp_id having  count(p.dept_id)=1;

select d.dept_name,e.emp_id
from employees e
left join departments d 
on e.dept_id=d.dept_id
left join 
projects p 
on d.dept_id=p.dept_id 
group by d.dept_name,e.emp_id having  count(p.dept_id)=0;

#12 list the departments along with the no. of employees and projects
select distinct(d.dept_name),count(e.emp_id),count(p.project_id) 
from departments d
left join employees e
on d.dept_id=e.dept_id
left join projects p
on d.dept_id=p.dept_id 
group by d.dept_name,e.emp_id,p.project_id; 

#13 get the departments name and total salary spent on employees for departments with at least 2 employees. 
select d.dept_name,count(e.emp_id),sum(salary)
from departments d
inner join employees e
on d.dept_id=e.dept_id
group by dept_name
having count(emp_id)=2;







  

