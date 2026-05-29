-- A query that displays category_name and product_name only for each product where the product name begins with "S".

-- Results should be ordered alphabetically by category_name and product_name

SELECT
    c.category_name,
    p.product_name
FROM 
    products AS p
JOIN 
    categories AS c
ON 
    p.category_id = c.category_id
WHERE
    p.product_name ILIKE 's%'
ORDER BY 
    c.category_name ASC, p.product_name ASC
;

