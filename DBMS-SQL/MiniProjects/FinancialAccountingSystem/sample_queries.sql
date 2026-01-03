/*
Sample queries for Financial Accounting System.
*/

-- List accounts with balances
SELECT
    account_id,
    account_name,
    balance
FROM accounts
ORDER BY account_id;

-- Total transaction amount by account
SELECT t.account_id, SUM(t.amount) AS total_amount
FROM transactions t
GROUP BY
    t.account_id
ORDER BY t.account_id;

-- Recent transactions (last 7 days)
SELECT *
FROM transactions
WHERE
    txn_date >= SYSDATE - 7
ORDER BY txn_date DESC;