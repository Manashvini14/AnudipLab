
mysql> use ecommerce;
Database changed
mysql> create table employee(employee_id int (10) not null primary key,employeename varchar(20) not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.13 sec)

mysql> insert into employee values(1,'manashvini',10000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(2,'laya',50000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into employee values(3,'dipika',30000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(4,'gautam',80000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(5,'lalit',100000);
Query OK, 1 row affected (0.04 sec)

mysql> select * from employee;
+-------------+--------------+--------+
| employee_id | employeename | salary |
+-------------+--------------+--------+
|           1 | manashvini   |  10000 |
|           2 | laya         |  50000 |
|           3 | dipika       |  30000 |
|           4 | gautam       |  80000 |
|           5 | lalit        | 100000 |
+-------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set salary=100000 where employee_id=5;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> update employee set salary=150000 where employee_id=5;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-------------+--------------+--------+
| employee_id | employeename | salary |
+-------------+--------------+--------+
|           1 | manashvini   |  10000 |
|           2 | laya         |  50000 |
|           3 | dipika       |  30000 |
|           4 | gautam       |  80000 |
|           5 | lalit        | 150000 |
+-------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set salary=250000 where employee_id=2;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-------------+--------------+--------+
| employee_id | employeename | salary |
+-------------+--------------+--------+
|           1 | manashvini   |  10000 |
|           2 | laya         | 250000 |
|           3 | dipika       |  30000 |
|           4 | gautam       |  80000 |
|           5 | lalit        | 150000 |
+-------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee where employee_id=5;
Query OK, 1 row affected (0.05 sec)

mysql> select * from employee;
+-------------+--------------+--------+
| employee_id | employeename | salary |
+-------------+--------------+--------+
|           1 | manashvini   |  10000 |
|           2 | laya         | 250000 |
|           3 | dipika       |  30000 |
|           4 | gautam       |  80000 |
+-------------+--------------+--------+
4 rows in set (0.00 sec)

mysql> delete from empployee;
ERROR 1146 (42S02): Table 'ecommerce.empployee' doesn't exist
mysql> delete from employee;
Query OK, 4 rows affected (0.04 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> insert into employee values(1,'manashvini',10000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values(2,'laya',50000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(3,'dipika',30000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(4,'gautam',80000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(5,'lalit',100000);
Query OK, 1 row affected (0.04 sec)

mysql> truncate table employee;
Query OK, 0 rows affected (0.10 sec)

mysql> select * from employee;
Empty set (0.03 sec)

mysql> insert into employee values(1,'manashvini',10000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(2,'laya',50000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(3,'dipika',30000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into employee values(4,'gautam',80000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(5,'lalit',100000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+-------------+--------------+--------+
| employee_id | employeename | salary |
+-------------+--------------+--------+
|           1 | manashvini   |  10000 |
|           2 | laya         |  50000 |
|           3 | dipika       |  30000 |
|           4 | gautam       |  80000 |
|           5 | lalit        | 100000 |
+-------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> drop from employee;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from employee' at line 1
mysql> drop table employee;
Query OK, 0 rows affected (0.07 sec)

mysql> select * from employee;
ERROR 1146 (42S02): Table 'ecommerce.employee' doesn't exist
mysql> insert into employee values(1,'manashvini',10000);
ERROR 1146 (42S02): Table 'ecommerce.employee' doesn't exist
mysql> create table employee(employee_id int (10) not null primary key,employeename varchar(20) not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.06 sec)

mysql> insert into employee values(1,'manashvini',10000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(2,'laya',50000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(3,'dipika',30000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(4,'gautam',80000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employee values(5,'lalit',100000);
Query OK, 1 row affected (0.04 sec)

mysql> select * from employee;
+-------------+--------------+--------+
| employee_id | employeename | salary |
+-------------+--------------+--------+
|           1 | manashvini   |  10000 |
|           2 | laya         |  50000 |
|           3 | dipika       |  30000 |
|           4 | gautam       |  80000 |
|           5 | lalit        | 100000 |
+-------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee add age int(10) not null;
Query OK, 0 rows affected, 1 warning (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employee_id  | int         | NO   | PRI | NULL    |       |
| employeename | varchar(20) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
| age          | int         | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> alter table employee modify employeename varchar(100) not null;
Query OK, 5 rows affected (0.15 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employee_id  | int          | NO   | PRI | NULL    |       |
| employeename | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| age          | int          | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee drop  age;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employee_id  | int          | NO   | PRI | NULL    |       |
| employeename | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename employeename to name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to name' at line 1
mysql> alter table employee rename column employeename to name;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | int          | NO   | PRI | NULL    |       |
| name        | varchar(100) | NO   |     | NULL    |       |
| salary      | double       | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee drop primary key;
Query OK, 5 rows affected (0.11 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | int          | NO   |     | NULL    |       |
| name        | varchar(100) | NO   |     | NULL    |       |
| salary      | double       | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee add constraint primary key(employee_id);
Query OK, 0 rows affected (0.18 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| employee_id | int          | NO   | PRI | NULL    |       |
| name        | varchar(100) | NO   |     | NULL    |       |
| salary      | double       | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
