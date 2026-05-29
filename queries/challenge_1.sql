-- A query that displays the total count of customers under the column "total_customers".
SELECT 
    COUNT(customer_id) AS total_customers
FROM 
    customers
;