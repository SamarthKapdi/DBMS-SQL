/*
Update multiple rows with different values in one statement.

Assumption:
- Table: employees(employee_id, salary)
*/

UPDATE employees
SET
    salary = CASE employee_id
        WHEN 101 THEN 65000
        WHEN 102 THEN 72000
        WHEN 103 THEN 80000
        ELSE salary
    END
WHERE
    employee_id IN (101, 102, 103);