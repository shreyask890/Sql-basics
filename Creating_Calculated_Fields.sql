
/* when you need to combine data from different columns or add extra formatting to your query results, you can use calculated fields.
 These are fields that are not actually stored in the database but are created on-the-fly within your SQL query.

Let's say you have a table called Vendors with columns vend_name and vend_country. You want to generate a report where the vendor's name is 
followed by their country in parentheses, like "Vendor Name (Country)".*/

/* CONCAT() is a function in MySQL that joins strings together.
vend_name and vend_country are the columns from which you want to retrieve data.
' (' and ')' are strings that you want to add in between the values from vend_name and vend_country, respectively.
AS vendor_location assigns an alias vendor_location to the calculated field, which is the concatenated string. */

SELECT CONCAT(vend_name,'(',vend_country,')') AS vendor_location
FROM Vendors order by vend_name;

# Using Aliases and The rtrim function in SQL removes trailing spaces from a string.

SELECT Concat(rTrim(vend_name), ' (', rTrim(vend_country), ')') AS vend_title
FROM Vendors
ORDER BY vend_name;
 

SELECT concat(ltrim(vend_name), '(',ltrim(vend_country),')')
AS vend_title
from Vendors
Order BY vend_name;

# Performing Mathematical Calculations
SELECT prod_id, quantity  ,item_price, quantity * item_price as expanded_price 
from OrderItems 
where order_num = 20008;





# Challenges

/*A common use for aliases is to rename table column fields in retrieved results 
(perhaps to match specific reporting or client needs). Write a SQL statement that 
retrieves vend_id, vend_name, vend_address, and vend_city from Vendors, renaming vend_name 
to vname, vend_city to vcity, and vend_address to vaddress. Sort the results by vendor name .*/

SELECT vend_id , vend_name as vname, vend_address as vaddress, vend_city as vcity 
from Vendors 
order by vend_name ;



/*Our example store is running a sale and all products are 10% off. Write a SQL statement that 
returns prod_id, prod_price, and sale_price from the Products table. sale_price is a calculated
field that contains, well, the sale price. Here’s a hint: you can multiply by 0.9 to get 90% of 
the original value (and thus the 10% off price).*/

Select prod_id, prod_price, prod_price * 0.1 as sale_price 
from Products ;





