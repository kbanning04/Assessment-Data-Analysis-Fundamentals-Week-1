-- A query that creates or replaces a VIEW, customer_summary, containing an overview of all customers with more than 15 orders

-- The view should have columns company, city, and total_orders only

-- Rows should be sorted in ascending order by the date of the customer's earliest order

CREATE OR REPLACE VIEW customer_summary AS
    SELECT
        s.company_name,
        c.city,
        COUNT(order_id)
    FROM
        customers AS c
    JOIN
        orders
    USING
        (customer_id)
    JOIN 
        order_details
    USING 
        (order_id)
    JOIN 
        products
    USING
        (product_id)
    JOIN 
        suppliers AS s
    USING
        (supplier_id)
    GROUP BY 
        s.company_name,
        c.city
;


