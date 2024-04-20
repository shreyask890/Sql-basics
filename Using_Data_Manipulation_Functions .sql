# Text Manipulation Functions


SELECT vend_name, UPPER(vend_name) as vend_name_upcase
from vendors
order by vend_name ;

SELECT vend_name, LOWER(vend_name) as vend_name_upcase
from vendors
order by vend_name ;


SELECT vend_name, LENGTH (vend_name) as vend_name_upcase
from vendors
order by vend_name ;


# Customer Kids Place is in the Customers table and has a contact named Michelle Green.
# But what if that were a typo, and the contact actually was supposed to have been Michael Green?

SELECT cust_name , cust_contact
from Customers 
where SOUNDEX(cust_contact) = SOUNDEX('Michael Green')  ;


# Date and Time Manipulation Functions

/*To retrieve all of the orders placed in a specific year, you’d need to filter by order date, 
but not the entire date value, just the year portion of it. */


SELECT order_num
from Orders 
where YEAR(order_date) = 2020;


# Numeric Manipulation Functions
-- Function Description
-- ABS() Returns a number’s absolute value
-- COS() Returns the trigonometric cosine of a specified angle
-- EXP() Returns the exponential value of a specific number
-- PI() Returns the value of PI
-- SIN() Returns the trigonometric sine of a specified angle
-- SQRT() Returns the square root of a specified number
-- TAN() Returns the trigonometric tangent of a specified angle

-- Challenges


/* Our store is now online, and customer accounts are being created. All users need a login, and the default
login will be a combination of their name and city. Write a SQL statement that returns customer ID (cust_id), 
customer name (customer_name), and user_login, which is all uppercase and composed of the first two characters 
of the customer contact (cust_contact) and the first three characters of the customer city (cust_city). 
So, for example, my login (Ben Forta living in Oak Park) would be BEOAK. Hint: for this one you’ll use functions, concatenation, and an alias.*/

select cust_id, cust_name, concat(UPPER(LEFT(cust_contact,2)),Upper(Left(cust_city,2))) as user_login
from Customers ;

select order_num, order_date 
from Orders 
where Year(order_date) = 2020 and MONTH(order_date) = 1
order by order_date;


