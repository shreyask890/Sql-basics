
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

SELECT Concat(rTrim(vend_name), ' (', rTrim(vend_country), ')') AS vend_title
FROM Vendors
ORDER BY vend_name;
 
