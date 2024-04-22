SELECT count(*) 
from Products 
where vend_id  = "DLL01";

-- But what if you wanted to return the number of products offered by each vendor?
# Creating Groups

SELECT COUNT(*) as total_order, vend_id 
from Products 
group by vend_id;


-- Filtering Groups
-- Using the having clause

SELECT cust_id, count(*) as orders 
from Orders 
group by cust_id
having count(*) >= 2;


-- WHERE filters before data is grouped, and HAVING filters after data is grouped.


SELECT vend_id, COUNT(*) AS num_prods FROM Products
WHERE prod_price >= 4
GROUP BY vend_id
HAVING COUNT(*) >= 2;

-- Grouping and Sorting

SELECT order_num, count(*) as items
from OrderItems 
group by order_num 
having count(*) >= 3
order by items,order_num;

/*
| Clause     | Description                                 | Required              |
|------------|---------------------------------------------|-----------------------|
| SELECT     | Columns or expressions to be returned       | Yes                   |
| FROM       | Table to retrieve data from                 | Only if selecting data from a table |
| WHERE      | Row-level filtering                         | No                    |
| GROUP BY   | Group specification                         | Only if calculating aggregates by group |
| HAVING     | Group-level filtering                       | No                    |
| ORDER BY   | Output sort order                           | No                    |
*/

-- The OrderItems table contains the individual items for each order. Write a SQL statement that returns the number of lines (as order_lines) for each order number (order_num) and sort the results by order_lines.
SELECT count(*) as order_lines, order_num
from OrderItems 
group by order_num
order by count(*);

-- WriteaSQLstatementthatreturnsafieldnamedcheapest_item,which
-- contains the lowest-cost item for each vendor (using prod_price in the Products table), and sort the results from lowest to highest cost.

select min(prod_price) as cheapest_item,vend_id
from Products
group by vend_id 
order by min(prod_price);


-- It’s important to identify the best customers, so write a SQL statement to return the order number (order_num in the OrderItems table) for all orders of at least 100 items

select order_num
from OrderItems 
group by order_num 
having sum(quantity) >= 100
order by order_num ;

-- Another way to determine the best customers is by how much they have spent. Write a SQL statement to return the order number (order_num in the OrderItems table) for all orders with a total price of at least 1000. Hint: for this one you’ll need to calculate and sum the total (item_price multiplied by quantity). Sort the results by order number.

select order_num, sum(item_price * quantity) as final_price
from OrderItems 
group by order_num 
having final_price >= 1000
order by order_num;



























