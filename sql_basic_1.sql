# Retrieving Individual Columns
SELECT prod_name from Products ;

-- Retrieving Multiple Columns
SELECT prod_id, prod_name, prod_price FROM Products;

-- Retrieving all columns
Select * from Products;

-- When a wildcard (*) is specified, all the columns in the table are returned.


-- Retrieving Distinct Rows
SELECT DISTINCT vend_id from Products ;

-- The DISTINCT keyword applies to all columns, not just the one it precedes
SELECT DISTINCT vend_id, prod_price from Products ;

-- limiting the rows
SELECT prod_name FROM Products LIMIT 5;

-- To get the next five rows, specify both where to start and the number of rows to retrieve
SELECT prod_name from Products limit 5 offset 5;

-- LIMIT 5 OFFSET 5 instructs supported DBMSs to return five rows starting from row 5. 
-- The first number is the number of rows to retrieve, and the second is where to start.

/* MySQL, MariaDB, and SQLite support a shorthand version of LIMIT 4 OFFSET 3,
enabling you to combine them as LIMIT 3,4. Using this syntax, the value before the ,
is the OFFSET and the value after the , is the LIMIT (yes, they are reversed, so be careful).*/

SELECT prod_name from Products limit 3,4;




# Challenges
-- Write a SQL statement to retrieve all customer IDs (cust_id) from the Customers table.

SELECT cust_id from Customers;

/* The OrderItems table contains every item ordered (and some were ordered multiple times). 
 Write a SQL statement to retrieve a list of the products (prod_id) ordered (not every order,
just a unique list of products). */

SELECT DISTINCT prod_id  from OrderItems;


/* Write a SQLstatement that retrieves all columns from the Customerstable 
and an alternate SELECT that retrieves just the customer ID. 
Use comments to comment out one SELECT so as to be able to run the other. (And, of course, test both statements.) */

SELECT * FROM Customers ;
SELECT cust_id from Customers;
