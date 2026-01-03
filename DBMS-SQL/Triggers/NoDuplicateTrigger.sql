/*
Prevent duplicates on a column using a trigger.

Note: Prefer a UNIQUE constraint when possible.

Assumption:
- Table: employees(email)
*/

CREATE OR REPLACE TRIGGER trg_no_duplicate_email
BEFORE INSERT OR UPDATE OF email ON employees
FOR EACH ROW
DECLARE
  v_count NUMBER;
BEGIN
  SELECT COUNT(*)
  INTO v_count
  FROM employees
  WHERE email = :NEW.email
    AND ( :OLD.email IS NULL OR email <> :OLD.email );

  IF v_count > 0 THEN
    RAISE_APPLICATION_ERROR(-20002, 'Duplicate email not allowed.');
  END IF;
END;
/