-- A query that displays the name of the third most expensive product(s) for each category.

-- The columns should be category_name, product_name.

-- Results should be sorted alphabetically by category.

WITH rank_categories AS( 
    SELECT 
        c.category_name,
        p.product_name,
        RANK() 
            OVER( 
                PARTITION BY c.category_name 
                ORDER BY p.unit_price DESC)
            AS rank
    FROM
        products AS p 
    JOIN 
        categories AS c 
    USING 
        (category_id)
)
SELECT
    c.category_name,
    p.product_name
FROM
    products AS p 
JOIN 
    categories AS c 
USING 
    (category_id)
JOIN 
    rank_categories
USING  
    (product_name)
WHERE
    rank = 3
ORDER BY 
    category_name ASC
;
