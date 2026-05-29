-- A query that displays the category_name and total count of products (num_products) for each category.

-- Results should be sorted  in descending order by count, with any ties sorted by descending order of category name.

SELECT
    c.category_name,
    COUNT(p.product_name) AS num_products
FROM 
    products AS p
JOIN 
    categories AS c
ON 
    p.category_id = c.category_id
GROUP BY
    c.category_name
ORDER BY 
    num_products DESC, c.category_name DESC
;

