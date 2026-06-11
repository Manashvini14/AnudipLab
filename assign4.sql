
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| ecommerces              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| student                 |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
10 rows in set (0.01 sec)

mysql> use ecommerces;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_ecommerces |
+----------------------+
| bankaccount          |
| customer             |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| employee            |
+---------------------+
2 rows in set (0.00 sec)

mysql> select*from employee;
+-------------+------------+--------+
| employee_id | name       | salary |
+-------------+------------+--------+
|           1 | manashvini |  10000 |
|           2 | laya       |  50000 |
|           3 | dipika     |  30000 |
|           4 | gautam     |  80000 |
|           5 | lalit      | 100000 |
+-------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select*from employee where salary > 70000;
+-------------+--------+--------+
| employee_id | name   | salary |
+-------------+--------+--------+
|           4 | gautam |  80000 |
|           5 | lalit  | 100000 |
+-------------+--------+--------+
2 rows in set (0.00 sec)

mysql>  select *from employee order by salary desc;
+-------------+------------+--------+
| employee_id | name       | salary |
+-------------+------------+--------+
|           5 | lalit      | 100000 |
|           4 | gautam     |  80000 |
|           2 | laya       |  50000 |
|           3 | dipika     |  30000 |
|           1 | manashvini |  10000 |
+-------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select *from employee order by salary ;
+-------------+------------+--------+
| employee_id | name       | salary |
+-------------+------------+--------+
|           1 | manashvini |  10000 |
|           3 | dipika     |  30000 |
|           2 | laya       |  50000 |
|           4 | gautam     |  80000 |
|           5 | lalit      | 100000 |
+-------------+------------+--------+
5 rows in set (0.00 sec)

mysql> create table orderss(order_id int primary key not null,department  varchar(50) not null,amount double not null);
Query OK, 0 rows affected (0.19 sec)

mysql> insert into orderss values(1,'sales',1000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into orderss values(2,'sales',2500);
Query OK, 1 row affected (0.04 sec)

mysql> insert into orders values(3,'HR',800);
ERROR 1146 (42S02): Table 'ecommerce.orders' doesn't exist
mysql> insert into orderss values(3,'HR',800);
Query OK, 1 row affected (0.04 sec)

mysql> select*from orderss;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   2500 |
|        3 | HR         |    800 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql> select department,sum(amount) as total_amount from orderss group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         3500 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.01 sec)

mysql> select department,avg(amount) as total_amount from orderss group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         1750 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.04 sec)

mysql>  select department,sum(amount) as total_amount from orderss group by department having sum(amount)>1000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         3500 |
+------------+--------------+
1 row in set (0.00 sec)

mysql>  create table emp_detail(emp_id int not null,name varchar(50) not null,department varchar(50) not null,salary double not null)
    -> ;
Query OK, 0 rows affected (0.12 sec)

mysql> insert into emp_detail values(101,'lucky','HR',5000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp_detail values(102,'layii','HR',8000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp_detail values(103,'deepu','IT',7000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp_detail values(104,'gauram','IT',5000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into emp_detail values(105,'Ritik','finance',6000);
Query OK, 1 row affected (0.04 sec)

mysql> select* from emp_detail;
+--------+--------+------------+--------+
| emp_id | name   | department | salary |
+--------+--------+------------+--------+
|    101 | lucky  | HR         |   5000 |
|    102 | layii  | HR         |   8000 |
|    103 | deepu  | IT         |   7000 |
|    104 | gauram | IT         |   5000 |
|    105 | Ritik  | finance    |   6000 |
+--------+--------+------------+--------+
5 rows in set (0.00 sec)

mysql>  select department,count(*) as total_employee from emp_detail group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
| finance    |              1 |
+------------+----------------+
3 rows in set (0.03 sec)

mysql> select department,sum(salary) as total_amount from emp_detail group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| HR         |        13000 |
| IT         |        12000 |
| finance    |         6000 |
+------------+--------------+
3 rows in set (0.03 sec)

mysql> select department,avg(salary) as total_amount from emp_detail group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| HR         |         6500 |
| IT         |         6000 |
| finance    |         6000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department,salary,count(*)from emp_detail group by department,salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |   5000 |        1 |
| HR         |   8000 |        1 |
| IT         |   7000 |        1 |
| IT         |   5000 |        1 |
| finance    |   6000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

mysql> select department,count(*) as total from emp_detail group by department having count(*)>1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
+------------+-------+
2 rows in set (0.03 sec)

mysql> select department,count(*) as total from emp_detail group by department having count(*)>=1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
| finance    |     1 |
+------------+-------+
3 rows in set (0.04 sec)

mysql> select department,count(*)from emp_detail group by department having count(*)>1;
+------------+----------+
| department | count(*) |
+------------+----------+
| HR         |        2 |
| IT         |        2 |
+------------+----------+
2 rows in set (0.00 sec)