/*
Simulate ON DELETE CASCADE via trigger.

Note: Prefer foreign keys with ON DELETE CASCADE when supported.

Assumption:
- Parent: departments(department_id)
- Child: employees(department_id)
*/

CREATE OR REPLACE TRIGGER trg_dept_delete_cascade_emps
AFTER DELETE ON departments
FOR EACH ROW
BEGIN
  DELETE FROM employees
  WHERE department_id = :OLD.department_id;
END;
/