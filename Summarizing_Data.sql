# Using Aggregate Functions
/*
| Function   | Description                           |
|------------|---------------------------------------|
| AVG()      | Returns a column’s average value      |
| COUNT()    | Returns the number of rows in a column|
| MAX()      | Returns a column’s highest value      |
| MIN()      | Returns a column’s lowest value       |
| SUM()      | Returns the sum of a column’s values  |
*/


select AVG(prod_price) as avg_price
from Products;

SELECT AVG(prod_price) as avg_price
from Products 
where vend_id = "DLL01";


# COUNT() can be used two ways:
-- Use COUNT(*) to count the number of rows in a table, whether columns contain values or NULL values.

SELECT COUNT(*) as num_cust
from Customers ;

# Use COUNT(column) to count the number of rows that have values in a specific column, ignoring NULL values.

SELECT count(cust_email) as num_email
from Customers;


SELECT Max(prod_price) as max_price 
from Products ;

-- When used with textual data, MAX() returns the row that would be the last if the data were sorted by that column.

SELECT MIN(prod_price) as min_price
from Products ;

SELECT SUM(quantity) as item_ordered
from OrderItems
where order_num =20007;


SELECT SUM(item_price*quantity) AS total_price 
FROM OrderItems
WHERE order_num = 20007;


-- Aggregates on Distinct Values
SELECT AVG(DISTINCT prod_price) as avg_price
from Products 
where vend_id = 'DLL01';



-- Combining Aggregate Functions
SELECT COUNT(*) AS num_items,
MIN(prod_price) AS price_min,
MAX(prod_price) AS price_max,
AVG(prod_price) AS price_avg
FROM Products;

-- Challenges


-- Write a SQL statement to determine the total number of items sold 

SELECT count(quantity)
from OrderItems;

-- Modify the statement you just created to determine the total number of product item (prod_item) BR01 sold.
SELECT count(quantity)
from OrderItems 
where prod_id = "BR01";

-- Write a SQL statement to determine the price (prod_price) of the most expensive item in the Products table that costs no more than 10.
#  Name the calculated field max_price.

SELECT max(prod_price) as max_price
from Products 
where  prod_price <= 10;





























