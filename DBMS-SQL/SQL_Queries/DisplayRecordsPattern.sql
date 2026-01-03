/*
Display records matching a pattern.

Examples:
- Names containing 'AN'
- Emails ending with '@example.com'

Assumption:
- Table: employees(name, email)
*/

-- Names containing 'AN'
SELECT * FROM employees WHERE UPPER(name) LIKE '%AN%';

-- Emails ending with '@example.com'
SELECT * FROM employees WHERE LOWER(email) LIKE '%@example.com';