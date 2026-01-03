/*
Employees hired in the first half of a month (day 1..15).

Assumption:
- Table: employees(hire_date)
*/

SELECT *
FROM employees
WHERE
    EXTRACT(
        DAY
        FROM hire_date
    ) BETWEEN 1 AND 15;