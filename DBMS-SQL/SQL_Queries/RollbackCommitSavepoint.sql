/*
Demonstrate COMMIT, SAVEPOINT, and ROLLBACK.

Assumption:
- Table: accounts(account_id, balance)
*/

-- Start transaction (depends on DB/client)

UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;

SAVEPOINT after_debit;

UPDATE accounts SET balance = balance + 100 WHERE account_id = 2;

-- Oops, undo the credit
ROLLBACK TO after_debit;

-- Finalize the debit only
COMMIT;