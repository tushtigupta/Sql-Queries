create database company;

use company;

create table Employee(Name Varchar(20),Age INT,Gender Varchar(30),DOB date);

Insert into Employee values('Ram Kumar', 21,'Male', '2003-02-05');

Insert into Employee values('Salman Khan', 22,'Male', '2002-02-01'),('Meera Khan', 21,'Female', '2004-02-12'),
('Sarita Kumari', 21,'Female', '2003-07-08'),('Anil Kapoor', 22,'Male', '20cmdcmcmccmcmcmc03-01-03');

Select * from Employee;

Alter table Employee ADD Email_ID varchar(20);

Alter table Employee MODIFY Email_ID varchar(20) after Name;

Alter table Employee MODIFY Email_ID int;

Alter table Employee MODIFY Email_ID varchar(20);

Alter table Employee  CHANGE Email_ID Email varchar(20);

Alter table Employee RENAME Employee_List;

CREATE table personal(
ID INT NOT NULL UNIQUE, 
Name varchar(50) NOT NULL,
Age INT NOT NULL CHECK (Age >= 18),
Gender varchar(1) NOT NULL, 
Phone varchar(10) NOT NULL UNIQUE,
City varchar(15) NOT NULL DEFAULT 'Agra'
);
Insert into personal values(101,'Vanshika',18,"M",402433,"Delhi");

select *from personal;

Insert into personal values(101,'Vansh',18,"F",40244,"Delhi");

Insert into personal values(102,'Vanshika',12,"F",40244,"Pune");

Insert into personal(ID,Name,Age,Gender,Phone) values(103,'Vansh',18,"F",40267);

Select*from personal;

create table Data(
ID int,
Name Varchar(30),
Age int,
Gender Varchar(10),
phone Varchar(10),
City Varchar(30));

Insert into Data values(1,'Ram kumar',19,'M',402215,'Agra'),
(2,'Sarita Kumari',21,'F',4034421,'Delhi'),
(3,'Salman KHan',20,'M',4056221,'Agra'),
(4,'Juhi Chawla',18,'F',4089821,'Bhoplal'),
(5,'Anil Kapoor',22,'M',4025221,'Agra'),
(6,'John Abhram',21,'M',4033776,'Delhi');
Select * from Data;

Select Name from Data;

Select ID,Name from Data;

Select ID AS Student_ID,Name AS Student_Name from Data;

Select ID AS 'Student ID',Name AS 'Student Name' from Data;

Select Name from Data Where Gender = 'M';

Select * from Data Where Gender = 'M';

Select * from Data Where Age = 21 ;

Select * from Data Where Age < 21 ;

Select * from Data Where Age > 21 ;

Select * from Data where City='Agra';

Select * from Data where City !='Agra';

Select * from Data where Age>= 18 and Age<=21;

Select * from Data where Age>= 18 or Age<=21;

Select * from Data where Age=21 and Gender='M';

Select * from Data where City='Bhoplal' or City='Agra';

Select * from Data where City!='Bhoplal' and City!='Agra';

Select * from Data where NOT(City='Bhoplal' or City='Agra');

Select * from Data where Age In(19,18,21);

Select * from Data where City In('Bhoplal','Agra');

Select * from Data where City Not IN('Bhoplal','Agra');

Select * from Data where Age Between 19 and 21;

create table Info(
ID int,
Name Varchar(30),
Age int,
Gender Varchar(10),
phone Varchar(10),
City Varchar(30));

Insert into Info values(1,'Ram kumar',19,'M',402215,'Agra'),
(2,'Sarita Kumari',21,'F',4034421,'Delhi'),
(3,'Salman KHan',20,'M',4056221,'Agra'),
(4,'Juhi Chawla',18,'F',4089821,'Bhoplal'),
(5,'Anil Kapoor',22,'M',4025221,'Agra'),
(6,'John Abhram',21,'M',4033776,'Delhi');

set sql_safe_updates=0;

update Info Set phone = 4022156 where ID =1;

select * from Info; 

update Info Set Age = 20 where ID =1;

update Info Set Age = 22 where ID IN (2,3);
Update Info Set Age=19;

update Info Set phone= 4056222 , City= 'Delhi' where ID =3;

Delete From Info where ID =1;

Delete From Info where Gender="F";

Delete from Info;

create table Info2(
ID int,
Name Varchar(30),
Age int,
Gender Varchar(10),
phone Varchar(10),
City Varchar(30));

Insert into Info2 values(1,'Ram kumar',19,'M',402215,'Agra');

Truncate table Info2;

Select * From Info2;

Drop table Info2;

create table Info3(
ID int,
Name Varchar(30),
Age int,
Gender Varchar(10),
phone Varchar(10),
City Varchar(30));

Insert into Info3 values(1,'Ram kumar',19,'M',402215,'Agra'),
(2,'Sarita Kumari',21,'F',4034421,'Delhi'),
(3,'Salman KHan',20,'M',4056221,'Agra'),
(4,'Juhi Chawla',18,'F',4089821,'Bhoplal'),
(5,'Anil Kapoor',22,'M',4025221,'Agra'),
(6,'John Abhram',21,'M',4033776,'Delhi');

select* from Info3;

Select * from Info3 
where Age BETWEEN 18 and 21;

Select * from Info3 
where Age NOT BETWEEN 18 and 21;

Select * from Info3 
where ID BETWEEN 2 and 5;

Select * from Info3 
where  Name BETWEEN "A" and "K";

Select * from Info3 
where  Name like "s%" ;

Select * from Info3 
where  Name like "%s%" ;

Select * from Info3 
where  Name like "%am%" ;

Select * from Info3 
where  Name like "%__h__ %" ;

Select * from Info3 
where  Name like "__h%" ;

Select * from Info3 
where  Name like "J%a";

Select * from Info3 
where  Name like "%_han";

Select * from Info3 
where  City like "a%";

Select * from Info3 
where  phone like "%56%";

Select * from Info3 
where  Name  NOT  like "R%";

Select * from Info3 
where  Name regexp "ra";

Select * from Info3 
where  Name regexp "^ra";

Select * from Info3 
where  Name regexp "an$";

Select * from Info3 
where  Name regexp "ram|kapoor|khan";

Select * from Info3
where  Name regexp "^ram|kapoor|^khan";

Select * from Info3 
where  Name regexp "ram|kapoor|khan$";	

create table Info4(
ID int,
Name Varchar(30),
Age int,
Gender Varchar(10),
phone Varchar(10),
City Varchar(30));

Insert into Info4 values(1,'Ram kumar',19,'M',402215,'Agra'),
(2,'Sarita Kumari',21,'F',4034421,'Delhi'),
(3,'Salman KHan',20,'M',4056221,'Agra'),
(4,'Juhi Chawla',18,'F',4089821,'Bhoplal'),
(5,'Anil Kapoor',22,'M',4025221,'Agra'),
(6,'John Abhram',21,'M',4033776,'Delhi');

Select * From Info4 
Order BY Name;

Select * From Info4
 Order BY Name ASC;

Select * From Info4
 Order BY Name DESC;

Select * From Info4 
Order BY City;

Select * From Info4
 Order BY Name,City;

Select * From Info4
 Order BY City,Name;

Select * From Info4 
Order BY City,Name DESC;

Select * From Info4 
Where Age > 19 Order BY Name;

Select City from Info4;

Select  distinct City
 from Info4;
 
 Select  distinct Age
 from Info4 
 ORDER BY Age;
 
 Insert into Info4 values(7,'Ilma ',19,'M',402229,'Agra');
 
 Select *from Info4;
 
 Select  distinct Age
 from Info4 
 ORDER BY Age;
 
 Select  distinct Age
 from Info4 
 where Age >= 19 
 ORDER BY Age;
 
 select* From Info4 
 limit 3;
 
 select* From Info4 
 where City = 'Agra' 
 limit 2;
 
 select* From Info4 
 where City = 'Agra' 
 Order By Name 
 limit 3 ;
 
 select* From Info4 
 limit 5,4;
 
 create table Info5(
ID int,
Name Varchar(30),
Age int,
Gender Varchar(10),
phone Varchar(10),
City Varchar(30));

Insert into Info5 values(1,'Ram kumar',19,'M',402215,'Agra'),
(2,'Sarita Kumari',21,'F',4034421,'Delhi'),
(3,'Salman KHan',20,'M',4056221,'Agra'),
(4,'Juhi Chawla',18,'F',4089821,'Bhoplal'),
(5,'Anil Kapoor',22,'M',4025221,'Agra'),
(6,'John Abhram',21,'M',4033776,'Delhi');

Select * from Info5;

Select Count(*) from Info5; 

Select Count(Name) from Info5;

Select Count(City) from Info5;

Select  distinct (City) from Info5;

Select Count( Distinct City) from Info5;

Select MAX(Age) from Info5;

Select MAX(Age) AS Maximum_Age From Info5;

Select MIN(Age) from Info5;

Select MIN(Age) AS Minimum_Age from Info5;

Select AVG(Age) AS Avg_Age from Info5;

Select SUM(Age) AS Sum_Age from Info5;

Select 5+6;

Select 5*6 As Total;

Select 15/3;

Select 16%3;

Select ID,Name,(Age +5) As New_Age from Info5;

Select pi();

select round(pi(),2);

Select Round(14.3);

Select Round(14.6);

Select Round(14.5);

Select CEIL(14.3);

Select Floor(14.3);

Select POW(2,2);

Select POW(5,8);

Select POW(4,3);

Select SQRT(64);

Select SQRT(5),ROUND(SQRT(5),2);

Select POW(5,8);

Select ABS(-2);

Select ABS(+2);

Select ABS(2.25);

Select ABS(-2.25);

Select SIGN(25);

Select SIGN(-25);

Select SIGN(0);

Select Rand();

Select Rand()*100;

Select SIN(90);

Select TAN(45);
Drop database tushti;
Drop Database university;

select ID, UPPER(Name) AS Name From Info5;

select ID, UCase(Name) AS Name From Info5;

select ID, lower(Name) AS Name From Info5;

select ID, LCase(Name) AS Name From Info5;

select ID,Name, character_length(Name) AS Length From Info5;

select ID,Name, char_length(Name) AS Length From Info5;

select ID,Name,length(Name) AS Length From Info5;

select concat(Name,Age) AS Student From Info5;

select concat(Name," ",Age) AS Student From Info5;

select concat(Name,"-",Age) AS Student From Info5;

Select Concat('Tushti'," - ",'Gupta') AS Student;

Select Concat('Tushti'," ",'Gupta',":-",18) AS Student_Age;

Select UPPER("Tushti") AS Name, CONCAT("Tushti","-", 18) AS Age;

Select  CONCAT(UPPER("Vanshika"),"-", 17) AS Student_Age;

Select Concat(Lower("Vanshika")," - ",17) AS Student_Age;

Select concat_ws("-","Vanshika","Hello","Tushti") AS Name;

Select "   Tushti Gupta     "  AS Name;

Select rtrim("    Tushti Gupta    ") As name;

Select ltrim("    Tushti Gupta    ") As name;

Select trim("    Tushti Gupta    ") As name;

Select Position("World" in "Hello World") As Position;

Select Position("o" in "Hello World") As Position;

Select instr( "Hello World",'ell') As Position;

Select locate( "ell",'Hello World') As Position;

Select locate( "l",'Hello World') As Position;

Select locate( "l",'Hello World',3) As Position;

Select locate( "l",'Hello World',5) As Position;

Select locate( "l",'Hello World',7) As Position;

Select locate( "w",'Hello World',10) As Position;

Select substring("Vanshika Bisht",3);

Select substring("Vanshika Bisht",9);

Select substring("Vanshika Bisht",3,6);

Select substring("Vanshika Bisht",-6,3);

Select MID("Vanshika Bisht",-14,8);

Select substring_index("www.vanshikaBisht.net",".",1);

Select substring_index("www.vanshikaBisht.net",".",2);

Select substring_index("www.vanshikaBisht.net","t",2);

Select LEFT("Vanshika Bisht",3);

Select RIGHT("Vanshika Bisht",5);

Select Rpad("Vanshika Bisht",20,"-");

Select lpad("Vanshika Bisht",20,"*");

Select reverse("Vanshika Bisht");

Select Replace("Vanshika Bisht","Bisht","Mam");

Select Replace("Vanshika Bisht Vanshika Bisht","Bisht","Mam");

Select strcmp("Vanshika Bisht","Tushti"); #Left String is greater than right string

Select strcmp("Vanshika Bisht","Vanshika");

Select strcmp("Vanshika","Vanshika Bisht");

Select field("a","x","a","k");

Select field("a","x","b","k");

Select field(5,2,4,3,7,2,0,5);

Select field("Anil","Divya","Anil","Isagi");

Select find_in_set("Anil","Divya,Anil,Isagi");

Select hex("Tushti Gupta");

Select space(100);

Select format(243.543,2);

Select current_date();

Select curdate();

Select sysdate();

Select now();

Select date("2019-10-15 09:03:21");

Select month("2019-10-15 09:03:21");

Select monthname("2019-10-15 09:03:21");

Select year("2019-10-15 09:03:21");

Select quarter("2019-10-15 09:03:21");

Select day("2019-10-15 09:03:21");

Select last_day("2019-10-15 09:03:21");

Select dayname("2019-10-15 09:03:21");

Select dayofmonth("2019-10-15 09:03:21");

Select dayofyear("2019-10-15 09:03:21");

Select week("2019-10-15 09:03:21");

Select weekday("2019-10-15 09:03:21");

Select extract(month from "2019-10-15 09:03:21");

Select adddate("2019-10-15", INTERVAL 10 DAY );

Select adddate("2019-10-15", INTERVAL 1 MONTH );

Select adddate("2019-10-15", INTERVAL 5000 MINUTE );

Select makedate(2024,10);

Select subdate("2019-10-25", INTERVAL 1 DAY);

# Time Functions
Select current_time();

Select current_timestamp();

Select localtimestamp();

Select curtime();

Select localtime();

Select time("2019-10-15 09:34:21");

Select hour("2019-10-15 09:34:21");

Select minute("2019-10-15 09:34:21");

Select timediff("05:23:10","09:34:21");


















 
 
 
 
 
 

































