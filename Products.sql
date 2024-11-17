SELECT * FROM company.product;

### Find the total quantity sold for each product
Select product_name, sum(quantity) AS 'Total Quantity' FRom product
Group By product_name;

Select Distinct(product_name), Count(product_name) AS No_Of_Products FRom product
Group By product_name;

### Find Average Price of each product
Select product_name, AVG(price) AS AVG_Price From product
Group By product_name;

### Get Total no. of sales(sales_id,count) for each region
Select region,count(Sale_id) AS Sales,count(region) AS Region from product
Group by region;

### Find the total Quantity sold for each region.
Select region,Sum(quantity) AS Total_Quantity from product
Group by region;

### Find the region where more than 15 items have been sold.
Select region,Sum(quantity) AS Total_Quantity from product
Group by region
Having Sum(Quantity)>5;

### 1.Find total sales amount for each product.
### 2.Find the regions where total sales amount exceeds 5000.
### 3.Find Average quantity sold for each product and only show products with an average quantity greater than 4.
### 4.Get the no. of different products sold in each region.

Select product_name, Sum(price*quantity) AS "Total Sales Amount" 
from product 
group by product_name;

Select region,sum(price*quantity) AS "Total Sales Amount" 
from product 
group by region
having sum(price*quantity)>5000;

Select product_name,AVG(quantity) AS  AVG_Quantity from product 
group by product_name 
having AVG(quantity)>4;

Select region,count(distinct(product_name)) from product 
group by region;

### Find the product with highest total sales amount.

Select product_name, Sum(price*quantity) AS "Total Sales Amount" 
from product 
group by product_name 
having SUM(price*quantity) limit 1;




 

