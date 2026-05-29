-- A query that displays the number of orders that involved 2 or more products

-- The column should be called count_of_multiple_orders

SELECT DISTINCT
   COUNT(order_id) AS count_of_multiple_orders
FROM 
    order_details 
HAVING
    COUNT(product_id) > 1
;
