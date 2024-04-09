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
WHERE cust_contact like '[JM]%'
ORDER BY cust_contact;


SELECT cust_contact
FROM Customers
WHERE cust_contact LIKE '[JM]%' ORDER BY cust_contact;


Select * from Customers;








