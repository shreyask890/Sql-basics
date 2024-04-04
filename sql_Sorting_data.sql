--  the ORDER BY clause takes the name of one or more columns by which to sort the output.\
SELECT prod_name from Products order by prod_name;

# When specifying an ORDER BY clause, be sure that it is the last clause in your SELECT statement.
# If it is not the last clause, an error will be generated.

-- Sorting by Multiple Columns
SELECT prod_id, prod_price, prod_name from Products order by prod_price , prod_name ;

-- Sorting by Column Position
SELECT prod_id, prod_price, prod_name from Products order by 2,3;
-- Instead of specifying column names, you specify the relative positions
-- of selected columns in the SELECT list.


-- Specifying Sort Direction
SELECT prod_id, prod_price, prod_name from Products order by prod_price DESC ;


Select cust_name from Customers order by cust_name DESC ;

SELECT cust_id  , order_num from Orders order by cust_id , order_date DESC ;

/*  Our fictitious store obviously prefers to sell more expensive items, and lots of them. 
 Write a SQL statement to display the quantity and price
(item_price) from the OrderItems table, sorted with the highest quantity and highest price first.*/

SELECT item_price  FROM OrderItems order by quantity ;




