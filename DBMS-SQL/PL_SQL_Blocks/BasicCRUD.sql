/*
Basic CRUD using PL/SQL.

Assumption:
- Table: employees(employee_id, name, salary)
*/

DECLARE
  v_employee_id employees.employee_id%TYPE := 1001;
  v_name        employees.name%TYPE := 'Demo User';
  v_salary      employees.salary%TYPE := 50000;
  v_new_salary  employees.salary%TYPE;
BEGIN
  -- CREATE
  INSERT INTO employees(employee_id, name, salary)
  VALUES (v_employee_id, v_name, v_salary);

  -- READ
  SELECT salary
  INTO v_new_salary
  FROM employees
  WHERE employee_id = v_employee_id;

  -- UPDATE
  UPDATE employees
  SET salary = v_new_salary + 5000
  WHERE employee_id = v_employee_id;

  -- DELETE
  DELETE FROM employees
  WHERE employee_id = v_employee_id;

  COMMIT;
END;
/