mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| ecommerces              |
| information_schema      |
| joints                  |
| mysql                   |
| performance_schema      |
| sakila                  |
| student                 |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
11 rows in set (0.01 sec)

mysql> use joints;
Database changed

mysql> create table department(depart_id int not null primary key,dep_name varchar(30) not null);
Query OK, 0 rows affected (0.09 sec)

mysql> insert into department values(1,'HR');
Query OK, 1 row affected (0.04 sec)

mysql> insert into department values(2,'IT');
Query OK, 1 row affected (0.01 sec)

mysql> insert into department values(3,'FINANCE');
Query OK, 1 row affected (0.01 sec)

mysql> insert into department values(4,'MARKETING');
Query OK, 1 row affected (0.01 sec)

mysql> select* from department;
+-----------+-----------+
| depart_id | dep_name  |
+-----------+-----------+
|         1 | HR        |
|         2 | IT        |
|         3 | FINANCE   |
|         4 | MARKETING |
+-----------+-----------+
4 rows in set (0.00 sec)

mysql> create table employ(emp_id int not null primary key,emp_name varchar(30) not null,depart_id int,foreign key(depart_id) references department(depart_id));
Query OK, 0 rows affected (0.17 sec)

mysql> insert into employ values(1,'Laya','1');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employ values(2,'lalit','1');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employ values(3,'gautam','2');
Query OK, 1 row affected (0.01 sec)

mysql> insert into employ values(4,'dp',null);
Query OK, 1 row affected (0.04 sec)

mysql> insert into employ values(5,'mannu','4');
Query OK, 1 row affected (0.04 sec)

mysql> select* from employ;
+--------+----------+-----------+
| emp_id | emp_name | depart_id |
+--------+----------+-----------+
|      1 | Laya     |         1 |
|      2 | lalit    |         1 |
|      3 | gautam   |         2 |
|      4 | dp       |      NULL |
|      5 | mannu    |         4 |
+--------+----------+-----------+
5 rows in set (0.00 sec)

mysql> select* from department;
+-----------+-----------+
| depart_id | dep_name  |
+-----------+-----------+
|         1 | HR        |
|         2 | IT        |
|         3 | FINANCE   |
|         4 | MARKETING |
+-----------+-----------+
4 rows in set (0.01 sec)

mysql> select emp_name,dep_name from employ inner join department on employ.depart_id =department.depart_id;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| Laya     | HR        |
| lalit    | HR        |
| gautam   | IT        |
| mannu    | MARKETING |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dep_name from employ left join department on employ.depart_id =department.depart_id;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| Laya     | HR        |
| lalit    | HR        |
| gautam   | IT        |
| dp       | NULL      |
| mannu    | MARKETING |
+----------+-----------+
5 rows in set (0.03 sec)

mysql> select emp_name,dep_name from employ right join department on employ.depart_id =department.depart_id;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| Laya     | HR        |
| lalit    | HR        |
| gautam   | IT        |
| NULL     | FINANCE   |
| mannu    | MARKETING |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select* from employ;
+--------+----------+-----------+
| emp_id | emp_name | depart_id |
+--------+----------+-----------+
|      1 | Laya     |         1 |
|      2 | lalit    |         1 |
|      3 | gautam   |         2 |
|      4 | dp       |      NULL |
|      5 | mannu    |         4 |
+--------+----------+-----------+
5 rows in set (0.00 sec)

mysql> select* from department;
+-----------+-----------+
| depart_id | dep_name  |
+-----------+-----------+
|         1 | HR        |
|         2 | IT        |
|         3 | FINANCE   |
|         4 | MARKETING |
+-----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dep_name from employ cross join department;
+----------+-----------+
| emp_name | dep_name  |
+----------+-----------+
| Laya     | MARKETING |
| Laya     | FINANCE   |
| Laya     | IT        |
| Laya     | HR        |
| lalit    | MARKETING |
| lalit    | FINANCE   |
| lalit    | IT        |
| lalit    | HR        |
| gautam   | MARKETING |
| gautam   | FINANCE   |
| gautam   | IT        |
| gautam   | HR        |
| dp       | MARKETING |
| dp       | FINANCE   |
| dp       | IT        |
| dp       | HR        |
| mannu    | MARKETING |
| mannu    | FINANCE   |
| mannu    | IT        |
| mannu    | HR        |
+----------+-----------+
20 rows in set (0.00 sec)