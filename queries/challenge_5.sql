-- A query that displays the five most expensive products supplied by suppliers based in London or Tokyo.

-- The columns should be product_name and unit_price only.

-- Results should be sorted in descending order of price

SELECT
    p.product_name,
    p.unit_price
FROM
    products AS p 
JOIN
    suppliers AS s 
ON 
    p.supplier_id = s.supplier_id
WHERE
    s.city LIKE '%Tokyo%'
    OR 
    s.city LIKE '%London%'
ORDER BY 
    p.unit_price DESC
LIMIT 5
;

