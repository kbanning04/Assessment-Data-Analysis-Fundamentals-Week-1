-- A query that displays the average product price (average_price) for each category from each supplier when the category name contains the letter 'm' (case-insensitive).

-- The columns should be supplier, category, average_price.

-- average_price should be an integer.

-- Results should be sorted alphabetically by supplier and category.

SELECT
    s.company_name AS supplier,
    c.category_name AS category,
    floor(AVG(p.unit_price)::integer) AS average_price
FROM
    suppliers AS s 
JOIN 
    products AS p 
USING 
    (supplier_id)
JOIN 
    categories AS c 
USING
    (category_id)
WHERE
    c.category_name ILIKE '%m%'
GROUP BY 
    s.company_name,
    c.category_name
ORDER BY 
    s.company_name ASC,
    c.category_name ASC

