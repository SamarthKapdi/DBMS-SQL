/*
Find the 3rd highest and 3rd lowest DISTINCT salary.

Assumption:
- Table: employees(salary)
*/

-- 3rd highest distinct salary
SELECT salary
FROM (
        SELECT DISTINCT
            salary, DENSE_RANK() OVER (
                ORDER BY salary DESC
            ) AS rnk
        FROM employees
    )
WHERE
    rnk = 3;

-- 3rd lowest distinct salary
SELECT salary
FROM (
        SELECT DISTINCT
            salary, DENSE_RANK() OVER (
                ORDER BY salary ASC
            ) AS rnk
        FROM employees
    )
WHERE
    rnk = 3;