/*
Restrict INSERT/UPDATE after 7 PM.

Assumption:
- Table: employees
*/

CREATE OR REPLACE TRIGGER trg_no_changes_after_7pm
BEFORE INSERT OR UPDATE ON employees
FOR EACH ROW
DECLARE
  v_hour NUMBER;
BEGIN
  v_hour := TO_NUMBER(TO_CHAR(SYSDATE, 'HH24'));
  IF v_hour >= 19 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Changes are not allowed after 7 PM.');
  END IF;
END;
/