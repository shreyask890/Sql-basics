#Wildcards Special characters used to match parts of a value.

# find all products that start with the word Fish
SELECT prod_id, prod_name 
FROM Products 
where prod_name LIKE "Fish%";

# uses two wildcards, one at either end of the pattern
SELECT prod_id, prod_name 
from Products 
where prod_name LIKE "%Bean Bag%"


#finds all products that begin with an F and end with a y
Select prod_name 
from Products 
where prod_name LIKE "F%y"

# The underscore is used just like %, but instead of matching multiple characters,
# the underscore matches just a single character.
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '__ inch teddy bear';


SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '% inch teddy bear';



#The brackets ([]) wildcard is used to specify a set of characters,
# any one of which must match a character in the specified position 
SELECT cust_contact
FROM Customers
WHERE cust_contact LIKE '[JM]%' ORDER BY cust_contact;


/* his wildcard can be negated by prefixing the characters with ^ (the caret character).
For example, the following matches any contact name that does not begin with the letter J or the letter M */
SELECT cust_contact
FROM Customers
WHERE cust_contact LIKE '[^JM]%' ORDER BY cust_contact;


# Same result can be accomplished usin the not operator
SELECT cust_contact
FROM Customers
WHERE NOT cust_contact Like '[JM]%' 
ORDER BY cust_contact;


/* Write a SQL statement to retrieve the product name (prod_name) and description (prod_desc) from the Products table, 
returning only products where the word toy is in the description.*/

SELECT prod_name, prod_desc 
from Products 
where prod_desc LIKE '%toy%';


/* Now let’s flip things around. Write a SQL statement to retrieve the product name (prod_name) and description (prod_desc) from the Products table, 
returning only products where the word toy doesn’t appear in the description. And this time, sort the results by product name.*/

SELECT prod_name,prod_desc 
from Products  
where not prod_desc like "%toy%"
order by prod_name;


/*Write a SQL statement to retrieve the product name (prod_name) and description (prod_desc) from the Products table, returning only products where both 
 the words toy and carrots appear in the description. There are a couple of ways to do this, but for this challenge use AND and two LIKE comparisons.*/

SELECT prod_name, prod_desc
from Products 
where prod_desc like "%toy%" and prod_desc like "%carrots%";


/*Write a SQL statement to retrieve the product name (prod_name) and description (prod_desc) from the Products table, returning only products where both 
the words toy and carrots appear in the description in that order (the word toy before the word carrots).*/

SELECT prod_name, prod_desc 
from Products 
where prod_desc LIKE '%toy%carrots%';







