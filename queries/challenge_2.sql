-- A query that displays the total integer value of all products in stock as "stock_value".

-- SUM all units_in_stock for products

SELECT 
    (SUM(units_in_stock)) AS stock_value
FROM
    products
;