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

-- IMIT 5 OFFSET 5 instructs supported DBMSs to return five rows starting from row 5. 
-- The first number is the number of rows to retrieve, and the second is where to start.