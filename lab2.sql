Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 



mysql>  show databases;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| ecommerces              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
9 rows in set (0.14 sec)

mysql> use ecommerces;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_ecommerces |
+----------------------+
| customer             |
| order_details        |
| product              |
+----------------------+
3 rows in set (0.04 sec)

mysql> create table BankAccount(account_id int(10) not null primary key,account_holder_name varchar(50)not null,account_balance int(10)not null);
Query OK, 0 rows affected, 2 warnings (0.20 sec)

mysql> Query OK, 0 rows affected, 2 warnings (0.06 sec)
    -> ^C
mysql> desc BankAccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| account_id          | int         | NO   | PRI | NULL    |       |
| account_holder_name | varchar(50) | NO   |     | NULL    |       |
| account_balance     | int         | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.04 sec)

 ●Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

mysql> insert into BankAccount values(101,'Gautam Vanam',40000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into BankAccount values(102,'Madhavi Koduri',60000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into BankAccount values(103,'Lalit Anumantla',50000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into BankAccount values(104,'Lavanya Gajula',100000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into BankAccount values(105,'Santosh Shetty',90000);
Query OK, 1 row affected (0.01 sec)

mysql> select*from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Gautam Vanam        |           40000 |
|        102 | Madhavi Koduri      |           60000 |
|        103 | Lalit Anumantla     |           50000 |
|        104 | Lavanya Gajula      |          100000 |
|        105 | Santosh Shetty      |           90000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

●Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

mysql> select account_holder_name,account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Gautam Vanam        |           40000 |
| Madhavi Koduri      |           60000 |
| Lalit Anumantla     |           50000 |
| Lavanya Gajula      |          100000 |
| Santosh Shetty      |           90000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

●Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

mysql> select account_holder_name,account_balance from BankAccount where account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Gautam Vanam        |           40000 |
| Madhavi Koduri      |           60000 |
| Lalit Anumantla     |          100000 |
| Lavanya Gajula      |          100000 |
| Santosh Shetty      |           90000 |

2 rows in set (0.03 sec)

●Task 4:Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101

mysql> update BankAccount set account_balance=100000 where account_id=101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Gautam Vanam        |          100000 |
|        102 | Madhavi Koduri      |           60000 |
|        103 | Lalit Anumantla     |          100000 |
|        104 | Lavanya Gajula      |          100000 |
|        105 | Santosh Shetty      |           90000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)