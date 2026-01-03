/*
Delete duplicate rows while keeping one row per business key.

Assumption:
- Table: employees
- Business key: email

If your table has a proper primary key, use that in the ORDER BY.
*/

DELETE FROM employees e
WHERE
    e.rowid NOT IN(
        SELECT MIN(rowid)
        FROM employees
        GROUP BY
            email
    );