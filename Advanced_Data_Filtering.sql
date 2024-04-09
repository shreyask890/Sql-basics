# Combining WHERE Clauses

SELECT prod_id, prod_price, prod_name
FROM Products
WHERE vend_id = 'DLL01' AND prod_price <= 4;

# Using the OR Operator
SELECT prod_id, prod_price, prod_name
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01';

#  You need a list of all products costing $10 or more made by vendors DLL01 and BRS01.
Select prod_price , prod_name
from Products 
where (vend_id  = "DLL01" or vend_id = "BRS01") 
and prod_price >= 10;

#SQL (like most languages) processes AND operators before OR operators. 


# Using the IN Operator
SELECT prod_name, prod_price 
from Products 
where vend_id IN('DLL01','BRS01')
ORDER BY prod_name;


# Using the NOT Operator - A keyword used in a WHERE clause to negate a condition.
SELECT prod_name 
from Products 
Where not vend_id = "DLL01"
order by prod_name;

/*
Challenge 1:
Write a SQL statement to retrieve the vendor name (vend_name) from the Vendors table, 
returning only vendors in California (this requires filtering by both country [USA] and state [CA]; after all, there could be a California outside of the USA). */

Select vend_name
from Vendors
where vend_state = "CA" AND vend_country = "USA";
 
SELECT * from OrderItems;

/*Challenge 2:
Write a SQL statement to find all orders where at least 100 of items BR01, BR02, or BR03 were ordered. You’ll want to return order number (order_num), product ID (prod_id),
 and quantity for the OrderItems table, filtering by both the product ID and quantity. Here’s a hint: depending on how you write your filter, you may need to pay special attention to order of evaluation.*/
SELECT order_num, prod_id, quantity from OrderItems where (quantity >= 100 ) and prod_id in ("BR01",'BR02','BR03');

/*Challenge 3:
 Write a SQL statement that returns the product name (prod_name) and price (prod_price) from Products for all products priced between 3 and 6. Use an AND, and sort the results by price.
*/


SELECT prod_name, prod_price 
from Products 
where prod_price BETWEEN 3 and 6 
order by prod_price;






