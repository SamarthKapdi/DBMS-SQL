/*
Cursor to display top 5 salaries.

Assumption:
- Table: employees(employee_id, name, salary)
*/

DECLARE
  CURSOR c_top IS
    SELECT employee_id, name, salary
    FROM (
      SELECT e.*, ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
      FROM employees e
    )
    WHERE rn <= 5
    ORDER BY salary DESC;
BEGIN
  FOR r IN c_top LOOP
    DBMS_OUTPUT.PUT_LINE(r.employee_id || ' | ' || r.name || ' | ' || r.salary);
  END LOOP;
END;
/