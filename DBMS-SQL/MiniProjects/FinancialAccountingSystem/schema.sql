/*
Financial Accounting System (minimal demo schema).
*/

CREATE TABLE accounts (
    account_id NUMBER PRIMARY KEY,
    account_name VARCHAR2 (100) NOT NULL,
    balance NUMBER (12, 2) DEFAULT 0 NOT NULL
);

CREATE TABLE transactions (
    txn_id NUMBER PRIMARY KEY,
    account_id NUMBER NOT NULL,
    txn_date DATE DEFAULT SYSDATE NOT NULL,
    amount NUMBER (12, 2) NOT NULL,
    description VARCHAR2 (200),
    CONSTRAINT fk_txn_account FOREIGN KEY (account_id) REFERENCES accounts (account_id)
);