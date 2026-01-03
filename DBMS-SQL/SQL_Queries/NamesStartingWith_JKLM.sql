/*
Display names starting with J, K, L, or M.

Assumption:
- Table: employees(name)
*/

SELECT *
FROM employees
WHERE
    UPPER(name) LIKE 'J%'
    OR UPPER(name) LIKE 'K%'
    OR UPPER(name) LIKE 'L%'
    OR UPPER(name) LIKE 'M%';