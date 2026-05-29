-- A query that displays the percentage of orders that had *any* discount applied.

-- The only column should be 'percentage_discounted'

-- The percentage should be rounded to 2 d.p.

WITH discounted_orders AS(
    SELECT 
        (COUNT(DISTINCT order_id)*1.0) AS number_of_discounts
    FROM 
        order_details
    WHERE 
        discount != 0
)
SELECT
    ROUND(((number_of_discounts / (SELECT COUNT(DISTINCT order_id) FROM order_details)) * 100),2) AS percentage_discounted
FROM
    discounted_orders
;