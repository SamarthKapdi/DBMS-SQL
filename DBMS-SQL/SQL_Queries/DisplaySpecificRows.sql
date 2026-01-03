/*
Display specific rows (e.g., rows 5 to 10) using ROW_NUMBER.

Assumption:
- Table: employees
- Order by: employee_id
*/

SELECT *
FROM (
        SELECT e.*, ROW_NUMBER() OVER (
                ORDER BY employee_id
            ) AS rn
        FROM employees e
    )
WHERE
    rn BETWEEN 5 AND 10;