/*
Delete a record and return a flag (1=deleted, 0=not found).

Assumption:
- Table: employees(employee_id)
*/

DECLARE
  v_employee_id employees.employee_id%TYPE := 101;
  v_deleted_flag NUMBER := 0;
BEGIN
  DELETE FROM employees
  WHERE employee_id = v_employee_id;

  IF SQL%ROWCOUNT > 0 THEN
    v_deleted_flag := 1;
  END IF;

  DBMS_OUTPUT.PUT_LINE('deleted_flag=' || v_deleted_flag);
  COMMIT;
END;
/