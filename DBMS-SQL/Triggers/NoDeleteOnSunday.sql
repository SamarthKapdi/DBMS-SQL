/*
Block deletes on Sunday.

Assumption:
- Table: employees
*/

CREATE OR REPLACE TRIGGER trg_no_delete_on_sunday
BEFORE DELETE ON employees
DECLARE
  v_day VARCHAR2(3);
BEGIN
  v_day := TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE=ENGLISH');
  IF v_day = 'SUN' THEN
    RAISE_APPLICATION_ERROR(-20003, 'Deletes are not allowed on Sunday.');
  END IF;
END;
/