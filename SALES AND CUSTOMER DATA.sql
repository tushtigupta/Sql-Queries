### SALES AND CUSTOMER DATA

create database customers;
use customers;

# DATA EXPLORATION
SELECT *
FROM customers
LIMIT 100;

SELECT *
FROM sales
LIMIT 100;

# CLEANING DATA
SELECT 
  s.customer_id
  , s.category
  , s.quantity
  , s.price
  , s.quantity * s.price AS total_price
  , s.invoice_date
  , s.shopping_mall
  , c.gender
  , c.age
  , c.payment_method
FROM sales  s
INNER JOIN customers  c
on s.customer_id=c.customer_id;

# Question one: What is the total revenue generated in the year 2022?
SELECT
SUM(quantity*price) AS Total_revenue
FROM sales
where invoice_date>'01-01-2022';

# Quesiton two: What is the most popular product category in terms of sales?
Select 
category, sum(quantity) As Total_Quantity
from sales
group by category
order by Total_Quantity desc;

# Quesiton three: What are the three top shopping malls in terms of sales revenue?
Select 
shopping_mall, round(sum(quantity*price),2) As "Total Price"
from sales 
group by shopping_mall
order by round(sum(quantity*price),2) desc
limit 3;

# Question four: What is the gender distribution across different product categories?
Select 
s.category, c.gender,count(*) As Count
from sales s 
inner join customers c 
on s.customer_id=c.customer_id
group by category,gender
order by Count desc;

# Question five: What is the age distribution of customers who prefer each payment method?
SELECT
  CASE WHEN age BETWEEN 0 AND 25 THEN '0-25'
       WHEN age BETWEEN 26 AND 50 THEN '26-50'
       WHEN age BETWEEN 51 AND 75 THEN '51-75'
       WHEN age BETWEEN 76 AND 100 THEN '76-100'
       ELSE 'other' 
       END AS age_range
  ,payment_method 
  ,COUNT(*) AS count
  FROM customers
 GROUP BY age_range, payment_method
 ORDER BY count DESC;






