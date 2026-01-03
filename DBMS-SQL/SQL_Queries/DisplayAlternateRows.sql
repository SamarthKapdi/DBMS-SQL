/*
Display alternate rows (1st, 3rd, 5th, ...) using ROW_NUMBER.

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
    MOD(rn, 2) = 1;