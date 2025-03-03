Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.3.0 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE TABLE BankAccount (
  account_id VARCHAR(10) PRIMARY KEY,
  account_holder_name VARCHAR(45) NOT NULL,
  account_balance INT  NOT NULL
);
Query OK, 0 rows affected (0.13 sec)

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)  
VALUES  
(101, 'Yogita Pardeshi', 25000),  
(102, 'Shruti kalburge ', 40000),  
(103, 'Pritee Rathi', 32000),  
(104, 'Manisha Chikane', 28000);
Query OK, 4 rows affected (0.04 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT *FROM BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Yogita Pardeshi     |           25000 |
| 102        | Shruti kalburge     |           40000 |
| 103        | Pritee Rathi        |           32000 |
| 104        | Manisha Chikane     |           28000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)

mysql> SELECT account_holder_name, account_balance FROM BankAccount WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Shruti kalburge     |           40000 |
| Pritee Rathi        |           32000 |
+---------------------+-----------------+
2 rows in set (0.00 sec)

mysql> UPDATE BankAccount SET account_balance = 35000 WHERE account_id = 101;
Query OK, 1 row affected (0.01 sec)

mysql> SELECT *FROM BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Yogita Pardeshi     |           35000 |
| 102        | Shruti kalburge     |           40000 |
| 103        | Pritee Rathi        |           32000 |
| 104        | Manisha Chikane     |           28000 |
+------------+---------------------+-----------------+
4 rows in set (0.00 sec)