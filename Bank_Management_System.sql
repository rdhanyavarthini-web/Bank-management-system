CREATE TABLE CUSTOMER (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50) NOT NULL,
    phone VARCHAR2(15) UNIQUE,
    email VARCHAR2(100) UNIQUE,
    city VARCHAR2(50) NOT NULL
);
CREATE TABLE BRANCH (
    branch_id NUMBER PRIMARY KEY,
    branch_name VARCHAR2(50) NOT NULL,
    city VARCHAR2(50) NOT NULL
);
CREATE TABLE ACCOUNT (
    account_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    branch_id NUMBER NOT NULL,
    account_type VARCHAR2(20) DEFAULT 'SAVINGS',
    balance NUMBER(12,2) DEFAULT 0 CHECK (balance >= 0),
    opening_date DATE DEFAULT SYSDATE,

    CONSTRAINT fk_account_customer
        FOREIGN KEY (customer_id)
        REFERENCES CUSTOMER(customer_id),

    CONSTRAINT fk_account_branch
        FOREIGN KEY (branch_id)
        REFERENCES BRANCH(branch_id),

    CONSTRAINT chk_account_type
        CHECK (account_type IN ('SAVINGS', 'CURRENT'))
);
CREATE TABLE EMPLOYEE (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(50) NOT NULL,
    branch_id NUMBER NOT NULL,
    designation VARCHAR2(50) NOT NULL,
    salary NUMBER(10,2) CHECK (salary > 0),

    CONSTRAINT fk_employee_branch
        FOREIGN KEY (branch_id)
        REFERENCES BRANCH(branch_id)
);
CREATE TABLE BANK_TRANSACTION (
    transaction_id NUMBER PRIMARY KEY,
    account_id NUMBER NOT NULL,
    transaction_type VARCHAR2(20) NOT NULL,
    amount NUMBER(12,2) CHECK (amount > 0),
    transaction_date DATE DEFAULT SYSDATE,

    CONSTRAINT fk_transaction_account
        FOREIGN KEY (account_id)
        REFERENCES ACCOUNT(account_id),

    CONSTRAINT chk_transaction_type
        CHECK (transaction_type IN ('DEPOSIT', 'WITHDRAWAL'))
);
ALTER TABLE ACCOUNT
ADD status VARCHAR2(20) DEFAULT 'ACTIVE';

INSERT INTO BRANCH (branch_id, branch_name, city)
VALUES (101, 'Main Branch', 'Chennai');

INSERT INTO BRANCH (branch_id, branch_name, city)
VALUES (102, 'City Branch', 'Madurai');

INSERT INTO BRANCH (branch_id, branch_name, city)
VALUES (103, 'Market Branch', 'Coimbatore');

DROP TABLE BANK_TRANSACTION;
DROP TABLE EMPLOYEE;
DROP TABLE ACCOUNT;
DROP TABLE BRANCH;
DROP TABLE CUSTOMER;
DROP TABLE BANK_TRANSACTION CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE ACCOUNT CASCADE CONSTRAINTS;
DROP TABLE BRANCH CASCADE CONSTRAINTS;
DROP TABLE CUSTOMER CASCADE CONSTRAINTS;

SELECT table_name
FROM user_tables
WHERE table_name IN ('CUSTOMER', 'BRANCH', 'ACCOUNT', 'EMPLOYEE', 'BANK_TRANSACTION');
DROP TABLE BANK_TRANSACTION CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE ACCOUNT CASCADE CONSTRAINTS;
DROP TABLE BRANCH CASCADE CONSTRAINTS;
SELECT table_name
FROM user_tables
WHERE table_name IN ('CUSTOMER', 'BRANCH', 'ACCOUNT', 'EMPLOYEE', 'BANK_TRANSACTION');
DROP TABLE BANK_TRANSACTION CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE ACCOUNT CASCADE CONSTRAINTS;
SELECT table_name
FROM user_tables
WHERE table_name IN ('CUSTOMER', 'BRANCH', 'ACCOUNT', 'EMPLOYEE', 'BANK_TRANSACTION');
DROP TABLE BANK_TRANSACTION CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
SELECT table_name
FROM user_tables
WHERE table_name IN ('CUSTOMER', 'BRANCH', 'ACCOUNT', 'EMPLOYEE', 'BANK_TRANSACTION');
DROP TABLE BANK_TRANSACTION CASCADE CONSTRAINTS;




CREATE TABLE CUSTOMER (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50) NOT NULL,
    phone VARCHAR2(15) UNIQUE,
    email VARCHAR2(100) UNIQUE,
    city VARCHAR2(50) NOT NULL
);
CREATE TABLE BRANCH (
    branch_id NUMBER PRIMARY KEY,
    branch_name VARCHAR2(50) NOT NULL,
    city VARCHAR2(50) NOT NULL
);
CREATE TABLE ACCOUNT (
    account_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    branch_id NUMBER NOT NULL,
    account_type VARCHAR2(20) DEFAULT 'SAVINGS',
    balance NUMBER(12,2) DEFAULT 0 CHECK (balance >= 0),
    opening_date DATE DEFAULT SYSDATE,

    CONSTRAINT fk_account_customer
        FOREIGN KEY (customer_id)
        REFERENCES CUSTOMER(customer_id),

    CONSTRAINT fk_account_branch
        FOREIGN KEY (branch_id)
        REFERENCES BRANCH(branch_id),

    CONSTRAINT chk_account_type
        CHECK (account_type IN ('SAVINGS', 'CURRENT'))
);
CREATE TABLE EMPLOYEE (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(50) NOT NULL,
    branch_id NUMBER NOT NULL,
    designation VARCHAR2(50) NOT NULL,
    salary NUMBER(10,2) CHECK (salary > 0),

    CONSTRAINT fk_employee_branch
        FOREIGN KEY (branch_id)
        REFERENCES BRANCH(branch_id)
);
CREATE TABLE BANK_TRANSACTION (
    transaction_id NUMBER PRIMARY KEY,
    account_id NUMBER NOT NULL,
    transaction_type VARCHAR2(20) NOT NULL,
    amount NUMBER(12,2) CHECK (amount > 0),
    transaction_date DATE DEFAULT SYSDATE,

    CONSTRAINT fk_transaction_account
        FOREIGN KEY (account_id)
        REFERENCES ACCOUNT(account_id),

    CONSTRAINT chk_transaction_type
        CHECK (transaction_type IN ('DEPOSIT', 'WITHDRAWAL'))
);
ALTER TABLE ACCOUNT
ADD status VARCHAR2(20) DEFAULT 'ACTIVE';
INSERT INTO BRANCH (branch_id, branch_name, city)
VALUES (101, 'Main Branch', 'Chennai');
INSERT INTO BRANCH (branch_id, branch_name, city)
VALUES (102, 'City Branch', 'Madurai');
INSERT INTO BRANCH (branch_id, branch_name, city)
VALUES (103, 'Market Branch', 'Coimbatore');

SELECT * FROM BRANCH;

INSERT INTO CUSTOMER (customer_id, customer_name, phone, email, city)
VALUES (1, 'Arun Kumar', '9876543210', 'arun@gmail.com', 'Chennai');
INSERT INTO CUSTOMER (customer_id, customer_name, phone, email, city)
VALUES (2, 'Priya Sharma', '9876543211', 'priya@gmail.com', 'Madurai');
INSERT INTO CUSTOMER (customer_id, customer_name, phone, email, city)
VALUES (3, 'Rahul Raj', '9876543212', 'rahul@gmail.com', 'Coimbatore');
INSERT INTO CUSTOMER (customer_id, customer_name, phone, email, city)
VALUES (4, 'Divya Suresh', '9876543213', 'divya@gmail.com', 'Trichy');
INSERT INTO CUSTOMER (customer_id, customer_name, phone, email, city)
VALUES (5, 'Karthik Kumar', '9876543214', 'karthik@gmail.com', 'Salem');
INSERT INTO CUSTOMER (customer_id, customer_name, phone, email, city)
VALUES (6, 'Meena Devi', '9876543215', 'meena@gmail.com', 'Chennai');
INSERT INTO CUSTOMER (customer_id, customer_name, phone, email, city)
VALUES (7, 'Vijay Anand', '9876543216', 'vijay@gmail.com', 'Madurai');
INSERT INTO CUSTOMER (customer_id, customer_name, phone, email, city)
VALUES (8, 'Sneha Priya', '9876543217', 'sneha@gmail.com', 'Coimbatore');
INSERT INTO CUSTOMER (customer_id, customer_name, phone, email, city)
VALUES (9, 'Sanjay Kumar', '9876543218', 'sanjay@gmail.com', 'Trichy');
INSERT INTO CUSTOMER (customer_id, customer_name, phone, email, city)
VALUES (10, 'Nandhini Raj', '9876543219', 'nandhini@gmail.com', 'Salem');

SELECT * FROM CUSTOMER;

INSERT INTO ACCOUNT (account_id, customer_id, branch_id, account_type, balance)
VALUES (1001, 1, 101, 'SAVINGS', 25000);
INSERT INTO ACCOUNT (account_id, customer_id, branch_id, account_type, balance)
VALUES (1002, 2, 102, 'SAVINGS', 18000);
INSERT INTO ACCOUNT (account_id, customer_id, branch_id, account_type, balance)
VALUES (1003, 3, 103, 'CURRENT', 45000);
INSERT INTO ACCOUNT (account_id, customer_id, branch_id, account_type, balance)
VALUES (1004, 4, 101, 'SAVINGS', 32000);
INSERT INTO ACCOUNT (account_id, customer_id, branch_id, account_type, balance)
VALUES (1005, 5, 102, 'CURRENT', 55000);
INSERT INTO ACCOUNT (account_id, customer_id, branch_id, account_type, balance)
VALUES (1006, 6, 101, 'SAVINGS', 15000);
INSERT INTO ACCOUNT (account_id, customer_id, branch_id, account_type, balance)
VALUES (1007, 7, 102, 'SAVINGS', 22000);
INSERT INTO ACCOUNT (account_id, customer_id, branch_id, account_type, balance)
VALUES (1008, 8, 103, 'CURRENT', 60000);
INSERT INTO ACCOUNT (account_id, customer_id, branch_id, account_type, balance)
VALUES (1009, 9, 101, 'SAVINGS', 27000);
INSERT INTO ACCOUNT (account_id, customer_id, branch_id, account_type, balance)
VALUES (1010, 10, 103, 'SAVINGS', 35000);

SELECT * FROM ACCOUNT;

INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
VALUES (201, 'Ravi Kumar', 101, 'Manager', 65000);
INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
VALUES (202, 'Lakshmi Devi', 101, 'Clerk', 35000);
INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
VALUES (203, 'Suresh Babu', 102, 'Manager', 62000);
INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
VALUES (204, 'Anitha Raj', 102, 'Cashier', 32000);
INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
VALUES (205, 'Mohan Das', 103, 'Manager', 60000);
INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
VALUES (206, 'Kavitha S', 103, 'Clerk', 34000);
INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
VALUES (207, 'Prakash R', 101, 'Cashier', 33000);
INSERT INTO EMPLOYEE (employee_id, employee_name, branch_id, designation, salary)
VALUES (208, 'Deepa M', 103, 'Clerk', 36000);

SELECT * FROM EMPLOYEE;

INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3001, 1001, 'DEPOSIT', 5000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3002, 1001, 'WITHDRAWAL', 2000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3003, 1002, 'DEPOSIT', 7000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3004, 1002, 'WITHDRAWAL', 1500);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3005, 1003, 'DEPOSIT', 10000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3006, 1003, 'WITHDRAWAL', 4000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3007, 1004, 'DEPOSIT', 6000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3008, 1004, 'WITHDRAWAL', 2500);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3009, 1005, 'DEPOSIT', 12000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3010, 1005, 'WITHDRAWAL', 5000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3011, 1006, 'DEPOSIT', 4000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3012, 1006, 'WITHDRAWAL', 1000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3013, 1007, 'DEPOSIT', 8000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3014, 1007, 'WITHDRAWAL', 3000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3015, 1008, 'DEPOSIT', 15000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3016, 1008, 'WITHDRAWAL', 6000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3017, 1009, 'DEPOSIT', 9000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3018, 1009, 'WITHDRAWAL', 3500);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3019, 1010, 'DEPOSIT', 11000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3020, 1010, 'WITHDRAWAL', 4500);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3021, 1001, 'DEPOSIT', 3000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3022, 1003, 'DEPOSIT', 5000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3023, 1005, 'WITHDRAWAL', 2500);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3024, 1008, 'DEPOSIT', 7000);
INSERT INTO BANK_TRANSACTION (transaction_id, account_id, transaction_type, amount)
VALUES (3025, 1010, 'WITHDRAWAL', 2000);

SELECT * FROM BANK_TRANSACTION;

COMMIT;

UPDATE ACCOUNT
SET balance = 28000
WHERE account_id = 1001;

SELECT * FROM ACCOUNT
WHERE account_id = 1001;
DELETE FROM EMPLOYEE

WHERE employee_id = 208;
SELECT * FROM EMPLOYEE;
ROLLBACK;

SELECT * FROM EMPLOYEE;
UPDATE ACCOUNT
SET balance = 30000
WHERE account_id = 1001;

SELECT * FROM ACCOUNT
WHERE account_id = 1001;
SAVEPOINT after_update;

UPDATE ACCOUNT
SET balance =  35000
WHERE account_id = 1001;

SELECT * FROM ACCOUNT
WHERE account_id = 1001;
ROLLBACK TO after_update;

SELECT * FROM ACCOUNT
WHERE account_id =1001;

COMMIT;

SELECT * FROM CUSTOMER;

SELECT customer_id, customer_name, city
FROM customer;
SELECT customer_id, customer_name, city
FROM CUSTOMER
WHERE TRIM(city) = 'chennai';
SELECT customer_id, customer_name,'[' || city || ']' AS city_value, LENGTH(city) AS city_length
FROM CUSTOMER;
SELECT customer_id, customer_name, city
FROM CUSTOMER
WHERE UPPER(TRIM(city)) = 'CHENNAI';
SELECT customer_id, customer_name, city
FROM CUSTOMER
WHERE UPPER(TRIM(city)) <> 'CHENNAI';

SELECT account_id, customer_id, balance
FROM ACCOUNT
WHERE balance > 30000;

SELECT account_id, customer_id, balance
FROM ACCOUNT
WHERE balance < 30000;

SELECT account_id, customer_id, balance
FROM ACCOUNT
WHERE balance >= 30000;

SELECT account_id, customer_id, balance
FROM ACCOUNT
WHERE balance <= 30000;

SELECT customer_id, customer_name, city
FROM CUSTOMER
WHERE UPPER(TRIM(city)) IN ( 'CHENNAI','MADURAI');

SELECT account_id, customer_id, balance
FROM ACCOUNT
WHERE balance BETWEEN 20000 AND 40000;

SELECT customer_id, customer_name, city
FROM CUSTOMER
WHERE customer_name LIKE 'S%';

SELECT customer_id, customer_name, city
FROM CUSTOMER
WHERE customer_name LIKE '%a';

SELECT account_id, customer_id, account_type, balance
FROM ACCOUNT
WHERE balance > 20000
AND account_type = 'SAVINGS';

SELECT account_id, customer_id, account_type, balance
FROM ACCOUNT
WHERE account_type = 'SAVINGS'
OR account_type = 'CURRENT';

SELECT account_id, customer_id, account_type, balance
FROM ACCOUNT
WHERE NOT account_type = 'SAVINGS';

SELECT account_id, customer_id, balance
FROM ACCOUNT
ORDER BY balance ASC;

SELECT account_id, customer_id, balance
FROM ACCOUNT
ORDER BY balance DESC;

SELECT account_id, customer_id, account_type, balance
FROM ACCOUNT
WHERE (account_type = 'SAVINGS' AND balance > 20000)
OR account_type = 'CURRENT';

SELECT account_id, customer_id, balance
FROM ACCOUNT
WHERE balance > 20000
ORDER BY balance DESC;

SELECT customer_name, UPPER(customer_name)AS uppercase_name
FROM CUSTOMER;

SELECT customer_name, LOWER(customer_name) AS lowercase
FROM CUSTOMER;

SELECT customer_name,LENGTH(customer_name) AS name_length
FROM CUSTOMER;

SELECT customer_name, SUBSTR(customer_name, 1, 5) AS first_five_characters
FROM CUSTOMER;

SELECT account_id, balance, ROUND(balance / 3, 2) AS rounded_balance
FROM ACCOUNT;

SELECT account_id, balance, MOD(balance, 1000) AS remainder
FROM ACCOUNT;

SELECT account_id, opening_date
FROM ACCOUNT;

SELECT account_id, opening_date, opening_date + 30 AS after_30_days
FROM ACCOUNT;

SELECT account_id, TO_CHAR(opening_date, 'DD-MM-YYYY') AS formatted_date
FROM ACCOUNT;

SELECT account_id, NVL(balance, 0) AS balance
FROM ACCOUNT;

SELECT account_id, balance,
       CASE
           WHEN balance >= 50000 THEN 'HIGH'
           WHEN balance >= 30000 THEN 'MEDIUM'
           ELSE 'LOW'
       END AS balance_category
FROM ACCOUNT;

SELECT COUNT(*) AS total_customers
FROM CUSTOMER;

SELECT SUM(balance) AS total_balance
FROM ACCOUNT;

SELECT AVG(balance) AS average_balance
FROM ACCOUNT;

SELECT MAX(balance) AS highest_balance
FROM ACCOUNT;

SELECT MIN(balance) AS lowest_balance
FROM ACCOUNT;

SELECT account_type, COUNT(*) AS total_accounts
FROM ACCOUNT
GROUP BY account_type;

SELECT account_type, SUM(balance) AS total_balance
FROM ACCOUNT
GROUP BY account_type; 

SELECT account_type, SUM(balance) AS total_balance
FROM ACCOUNT
GROUP BY account_type
HAVING SUM(balance) > 150000;

SELECT c.customer_id,
       c.customer_name,
       a.account_id,
       a.account_type,
       a.balance
FROM CUSTOMER c
INNER JOIN ACCOUNT a
ON c.customer_id = a.customer_id;

SELECT c.customer_name,
       a.account_id,
       a.account_type,
       b.branch_name,
       b.city
FROM CUSTOMER c
INNER JOIN ACCOUNT a
ON c.customer_id = a.customer_id
INNER JOIN BRANCH b
ON a.branch_id = b.branch_id;

SELECT b.branch_id,
       b.branch_name,
       e.employee_name,
       e.designation
FROM BRANCH b
LEFT JOIN EMPLOYEE e
ON b.branch_id = e.branch_id;

SELECT e.employee_id,
       e.employee_name,
       e.designation,
       b.branch_name,
       b.city
FROM BRANCH b
RIGHT JOIN EMPLOYEE e
ON b.branch_id = e.branch_id;

SELECT c.customer_id,
       c.customer_name,
       a.account_id,
       a.account_type,
       a.balance
FROM CUSTOMER c
FULL OUTER JOIN ACCOUNT a
ON c.customer_id = a.customer_id;

SELECT c.customer_id,
       c.customer_name,
       a.account_id,
       a.account_type,
       a.balance
FROM CUSTOMER c
FULL OUTER JOIN ACCOUNT a 
ON c.customer_id = a.customer_id;

SELECT account_id,
       balance,
       RANK() OVER(ORDER BY balance DESC) AS balance_rank
FROM ACCOUNT;

SELECT account_id,
       balance,
       ROW_NUMBER() OVER (ORDER BY balance DESC) AS row_num
FROM ACCOUNT;

SELECT account_id,
       account_type,
       balance,
       RANK() OVER (
            PARTITION BY account_type
            ORDER BY balance DESC
       ) AS type_rank
FROM ACCOUNT;

SELECT account_id,
       balance,
       SUM(balance) OVER (
           ORDER BY balance DESC
           ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS running_total
FROM ACCOUNT;

SELECT account_id,
       balance,
       LAG(balance) OVER (
           ORDER BY balance DESC
       ) AS previous_balance
FROM ACCOUNT;

SELECT account_id,
       balance,
       LEAD(balance) OVER(
            ORDER BY balance DESC
       ) AS next_balance
FROM ACCOUNT;

WITH high_balance_accounts AS (
     SELECT account_id, balance
     FROM ACCOUNT
     WHERE balance > 30000
)
SELECT *
FROM high_balance_accounts;

WITH account_summary AS (
     SELECT account_type,
            SUM(balance) AS total_balance
     FROM ACCOUNT
     GROUP BY account_type
)
SELECT *
FROM account_summary
WHERE total_balance > 150000;
 
       










