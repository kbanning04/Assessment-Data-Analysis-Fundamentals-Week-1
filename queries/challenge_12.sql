-- A query that returns details on the difference in price between individual orders (including discount) and the standard warehouse price

-- Products have a standard price, but an additional percentage discount may be applied to the product total

-- The columns should be order_id, expected_price, actual_price, and price_difference

-- Only the top five rows (in descending order of price_difference) should be displayed

-- All values should be rounded to 2 d.p. for display (but otherwise kept at full precision)


WITH discount_price AS (
    SELECT
        o.order_id, 
        (SUM((o.unit_price * o.quantity))) * o.discount AS new_price
    FROM
        order_details AS o
    GROUP BY
        o.order_id, o.discount
),
normal_price AS (
    SELECT
        o.order_id, 
        (SUM((o.unit_price * o.quantity))) AS price
    FROM
        order_details AS o
    GROUP BY
        order_id
)
SELECT 
    order_id,
    n.price AS expected_price,
    d.new_price AS actual_price,
    (n.price - d.new_price) AS price_difference
FROM 
    normal_price AS n
JOIN 
    discount_price AS d
USING
    (order_id)
WHERE
    d.new_price != 0
ORDER BY
    price_difference DESC
LIMIT 5
;



