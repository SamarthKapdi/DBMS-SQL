/*
Delete alternate rows (delete 2nd, 4th, 6th, ...) deterministically.

Assumption:
- Table: employees
- Order by: employee_id
*/

DELETE FROM employees
WHERE
    rowid IN (
        SELECT rid
        FROM (
                SELECT rowid AS rid, ROW_NUMBER() OVER (
                        ORDER BY employee_id
                    ) AS rn
                FROM employees
            )
        WHERE
            MOD(rn, 2) = 0
    );