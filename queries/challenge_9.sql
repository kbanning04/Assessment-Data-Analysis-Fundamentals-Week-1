-- A query that displays the full name of every employee, including their honorific, as employee_full_name.

-- Results should be ordered in descending order of employment year, with ties broken by sorting alphabetically by last name (ascending).


SELECT
    e.title_of_courtesy || ' ' || e.first_name || ' ' || e.last_name AS employee_full_name
FROM 
    employees AS e
ORDER BY 
    EXTRACT(YEAR FROM e.hire_date) DESC,
    e.last_name ASC
;