/*
Cursor to display employees.

Assumption:
- Table: employees(employee_id, name, salary)
*/

DECLARE
  CURSOR c_emps IS
    SELECT employee_id, name, salary
    FROM employees
    ORDER BY salary DESC;
BEGIN
  FOR r IN c_emps LOOP
    DBMS_OUTPUT.PUT_LINE(r.employee_id || ' | ' || r.name || ' | ' || r.salary);
  END LOOP;
END;
/