/*
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order
*/
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
10 rows in set (0.03 sec)

mysql> use student;
Database changed

mysql> create table student2(stud_id int(10) not null,FirstName varchar(50),LastName varchar(40),Age int(10),Phoneno int(30),Address varchar(100));
Query OK, 0 rows affected, 3 warnings (0.16 sec)

mysql> insert into student2 values(1,'lavanya','gajula',20,983564714,'padmanagar');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student2 values(2,'dipika','mittapelli',21,989356864,'gayatri nagar');
Query OK, 1 row affected (0.04 sec)

mysql> insert into student2 values(3,'Gautam','Vanam',22,989389642,'kamatghar');
Query OK, 1 row affected (0.04 sec)

mysql> insert into student2 values(4,'meghana','Kurapati',22,969878962,'thane');
Query OK, 1 row affected (0.04 sec)

mysql> insert into student2 values(5,'Tanai','manchikatla',20,98958564,'mumbai');
Query OK, 1 row affected (0.04 sec)

mysql> select* from student2;
+---------+-----------+-------------+------+-----------+---------------+
| stud_id | FirstName | LastName    | Age  | Phoneno   | Address       |
+---------+-----------+-------------+------+-----------+---------------+
|       1 | lavanya   | gajula      |   20 | 983564714 | padmanagar    |
|       2 | dipika    | mittapelli  |   21 | 989356864 | gayatri nagar |
|       3 | Gautam    | Vanam       |   22 | 989389642 | kamatghar     |
|       4 | meghana   | Kurapati    |   22 | 969878962 | thane         |
|       5 | Tanai     | manchikatla |   20 |  98958564 | mumbai        |
+---------+-----------+-------------+------+-----------+---------------+
5 rows in set (0.03 sec)

mysql> select* from student2 order by LastName;
+---------+-----------+-------------+------+-----------+---------------+
| stud_id | FirstName | LastName    | Age  | Phoneno   | Address       |
+---------+-----------+-------------+------+-----------+---------------+
|       1 | lavanya   | gajula      |   20 | 983564714 | padmanagar    |
|       4 | meghana   | Kurapati    |   22 | 969878962 | thane         |
|       5 | Tanai     | manchikatla |   20 |  98958564 | mumbai        |
|       2 | dipika    | mittapelli  |   21 | 989356864 | gayatri nagar |
|       3 | Gautam    | Vanam       |   22 | 989389642 | kamatghar     |
+---------+-----------+-------------+------+-----------+---------------+
5 rows in set (0.03 sec)
