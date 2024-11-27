#Query is to create a database with name comapany and a table with name emplyoees
Create database COMPANY_1;

Use COMPANY_1;

Create Table Employees (
ID INT primary Key auto_increment,
Name varchar(100),
Position varchar(100),
Salary decimal(10,2),
Date_of_Joining date
);

#Query is to insert values in the created table of database company
Insert into Employees Values(
1,'John Doe', 'Manager', 55000.00, '2020-01-15');

Insert into Employees(Name,Position,Salary,Date_of_Joining) Values
('Jane Smith', 'Developer', 48000.00, '2019-07-10');

Insert into Employees(Name,Position,Salary,Date_of_Joining) Values
('Alice Johnson', 'Designer', 45000.00, '2021-03-22'),
('Bob Brown', 'Developer', 50000.00, '2018-11-01');

# Query is to select all the employees who are developers
Select * From Employees
where Position='Developer';

#Query is to update the salary to 46000.00 where name is Alice Johnson in table employees
Update Employees 
SET Salary=46000.00
where Name='Alice Johnson';

Set sql_safe_updates=0;

#Query is to delete record from employees where name is Bob Brown
Delete From Employee 
Where Name='Bob Brown';

#Query is to select employees where salary is higher than 48000.00
Select * From Employees 
where Salary > 48000;

#Query is to add a column name email in the table employees
Alter Table Employees 
ADD Email varchar(50);

#Query is to update email where name is John Doe in table employees
Update Employees 
Set Email='john.doe@company.com' 
where Name='John Doe';

#Query is to select only name and salary from employees
Select Name, Salary From Employees;

#Query is to count no of employees who join after 1st january 2021
Select Count(*) From Employees 
Where Date_of_Joining > '2020-01-01';

#Query is to select salary in descending order
Select  * From Employees 
Order BY Salary Desc;

#Query is to drop column of email from table employees
Alter Table Employees 
Drop Email;

Select * From Employees;

#Query is to select the highest salry ih the table employees
Select MAX(Salary) From Employees;





