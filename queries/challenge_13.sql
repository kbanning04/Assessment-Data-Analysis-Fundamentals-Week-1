-- A query that returns full employee names and a list of their assigned territories

-- Columns should be employee and assigned_territories only

-- Only territories with single-word descriptions should be included

-- Rows should be ordered by number of territories in descending order

-- Territory lists should be in alphabetical order

-- Territory lists should be lists, not concatenated strings


SELECT
    e.first_name || ' ' || e.last_name AS employee,
    l.territory_id AS assigned_territories
FROM
    employees AS e
JOIN 
    employee_territories AS l
USING
    (employee_id)
JOIN
    territories AS t
USING 
    (territory_id)
LIMIT 9
;