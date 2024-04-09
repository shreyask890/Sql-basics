# using the where clause 
SELECT prod_name , prod_price from Products where prod_price = 3.49;


# When using both ORDER BY and WHERE clauses, make sure that ORDER BY comes after the WHERE.

#The WHERE Clause Operators
/*
Operator        Description
=============== ==========
=               Equality
<>              Nonequality
!=              Nonequality
<               Less than
<=              Less than or equal to
!<              Not less than
>               Greater than
>=              Greater than or equal to
!>              Not greater than
BETWEEN         Between two specified values
IS NULL         Is a NULL value
*/

SELECT prod_name, prod_price from products where prod_price <= 10  ;

SELECT vend_id, prod_name from products where vend_id  <> "DLL01";

#Checking for a Range of Values
SELECT prod_price , prod_name from Products where prod_price BETWEEN 5 and 10;


#Checking for null Value
Select prod_price, prod_name from Products where prod_price IS NULL;

SELECT cust_name from Customers where cust_email is null;


/*
Challenge 1:
Write a SQL statement to retrieve the product ID (prod_id) and name (prod_name) from the Products table, returning only products with a price of 9.49. */

SELECT prod_id, prod_name from Products where prod_price = 9.49;


/*Challenge 2:
Write a SQL statement to retrieve the product ID (prod_id) and name (prod_name) from the Products table, returning only products with a price of 9 or more.*/

SELECT prod_id, prod_name from Products where prod_price >= 9;

/*Challenge 3:
Now let’s combine Lessons 3 and 4. Write a SQL statement that retrieves the unique list of order numbers (order_num) from the OrderItems table, which contain 100 or more of any item.*/

SELECT DISTINCT order_num from OrderItems where quantity >= 100; 



/*Challenge 4:
One more. Write a SQL statement that returns the product name (prod_name) and price (prod_price) from Products for all products priced between 3 and 6. Oh, and sort the results by price.*/

SELECT prod_name , prod_price from Products where prod_price BETWEEN 3 and 6 order by  prod_price;


