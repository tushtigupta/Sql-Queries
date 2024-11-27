# Assignment by Tushti Gupta SODS:-
# Q1- Creating the Database Named as Library
Create database Library;

use Library;

# Creating Table Named as Books
Create table Books(
ID INT Primary Key auto_increment,
Title VARCHAR(255),
Author VARCHAR(100),
Year Year,
Genre VARCHAR(100)
);

# Q2- Inserting values into table Books
Insert into Books (Title,Author,Year,Genre) values
("The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"),
("Pride and Prejudice", "Jane Austen", 1936, "Romance"),
("To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"),
("1984", "George Orwell", 1949, "Dystopian"),
("Moby Dick", "Herman Melville", 1926, "Adventure");

# Q3- Query to select all books where the title starts with the letter 'T' using the LIKE operator.
Select * From Books Where Title Like "t%";

# Q4- Query to find all books where the author's last name ends with 'son' using the LIKE Operator
Select * From Books Where Author Like "%son";

# Q5- Query to find all books where the title contains the word 'and' using the LIKE operator.
Select * From Books Where Title Like "%and%";

# Q6- Query to retrieve all books where the title ends with the word 'bird' using the LIKE operator
Select * From Books Where Title Like "%bird";

# Q7- Query to find all books where the title has exactly 3 characters using the REGEXP operator
Select * From Books Where Title regexp "[A-Z]e | [A-Z]e | [A-Z]e";

# Q8- Query to select all books where the title contains a number using the REGEXP operator.
Select * From Books Where Title regexp "[0-9]";

# Q9- Query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using the REGEXP operator.
Select * From Books Where Title regexp "^[A-J]";

# Q10- Query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator.
Select * From Books Where Genre regexp "Fiction|Adventure";

# Q11- Query to find all books where the title contains at least one uppercase letter using the REGEXP operator.
Select * From Books Where Title regexp "[A-J]";

# Q12- Query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.
Select * From Books Where Year like "19%" and Year>1950;

# Q13- Query to retrieve all books where the author's name contains exactly two words using the
Select * From Books Where Author regexp "[A-Z]e | [A-Z]e";

# Q14- Query to find all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP operator.
Select * From Books Where Title  regexp "^P" AND Title regexp "[A-Z]e | [A-Z]e";

# Q15- Query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) using the REGEXP operator.
Select * From Books Where Title regexp "[^a-zA-Z0-9]";










