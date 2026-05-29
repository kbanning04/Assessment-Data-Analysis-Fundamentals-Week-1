-- A query that displays the first ten orders where the total price is more than the price of the most expensive product in the database.

-- The columns should be order_id and total_price only.

-- total_price should be displayed as an integer.

-- Results should be ordered by descending order_id

-- When calculating the order price, ignore any discounts and use the warehouse-standard price for the products only

SELECT
    o.order_id,
    floor(SUM((unit_price * quantity))::integer) AS total_price
FROM 
    order_details AS o
GROUP BY 
    o.order_id
HAVING
    SUM((unit_price * quantity)) > (SELECT MAX(unit_price) FROM products)
ORDER BY 
    order_id DESC
LIMIT 10;
;
