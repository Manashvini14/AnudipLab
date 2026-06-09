/*
Create Database StudentManagementSystem

1.Create Table student

with attribute :● StudentID (Primary Key)
●Name
●Age
●Address

2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 

● StudentID (Foreign key) 

● Date 

● InstructorName 

● Feedback

Add 5 Records in table
*/


create database StudentManagementSystem;
Query OK, 1 row affected (0.05 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> create table students(student_id varchar(10) not null primary key,name varchar(50) not null,age int(10),address varchar(100));
Query OK, 0 rows affected, 1 warning (0.08 sec)

mysql> desc students;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| student_id | varchar(10)  | NO   | PRI | NULL    |       |
| name       | varchar(50)  | NO   |     | NULL    |       |
| age        | int          | YES  |     | NULL    |       |
| address    | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.04 sec)

mysql> insert into students values('s101','lavanya',20,'padmanager');
Query OK, 1 row affected (0.04 sec)

mysql> insert into students values('s102','dipika',20,'bhiwandi');
Query OK, 1 row affected (0.04 sec)

mysql> insert into students values('s103','gautam',21,'Thane');
Query OK, 1 row affected (0.04 sec)

mysql> insert into students values('s104','Lalit',21,'Mumbai');
Query OK, 1 row affected (0.04 sec)

mysql> insert into students values('s105','manashvini',20,'navi mumbai');
Query OK, 1 row affected (0.04 sec)

mysql> select* from students;
+------------+------------+------+-------------+
| student_id | name       | age  | address     |
+------------+------------+------+-------------+
| s101       | lavanya    |   20 | padmanager  |
| s102       | dipika     |   20 | bhiwandi    |
| s103       | gautam     |   21 | Thane       |
| s104       | Lalit      |   21 | Mumbai      |
| s105       | manashvini |   20 | navi mumbai |
+------------+------------+------+-------------+
5 rows in set (0.03 sec)

mysql> create table feedback(feedback_id varchar(10) not null primary key,student_id  varchar(10) not null,date datetime not null,InstructorName varchar(50) not null,feedback varchar(50) not null,foreign key(student_id) references students (student_id));
Query OK, 0 rows affected (0.17 sec)

mysql> desc feedback;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| feedback_id    | varchar(10) | NO   | PRI | NULL    |       |
| student_id     | varchar(10) | NO   | MUL | NULL    |       |
| date           | datetime    | NO   |     | NULL    |       |
| InstructorName | varchar(50) | NO   |     | NULL    |       |
| feedback       | varchar(50) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.04 sec)

mysql> insert into feedback values('f101','s101','2026-05-03','vaishnavi koduri','session is good');
Query OK, 1 row affected (0.04 sec)

mysql> insert into feedback values('f102','s101','2026-03-04','lavanya gajula','session is excellent');
Query OK, 1 row affected (0.04 sec)

mysql> insert into feedback values('f103','s103','2026-02-05','aparna sheelar','session is nice');
Query OK, 1 row affected (0.04 sec)

mysql> insert into feedback values('f104','s104','2026-04-07','sai cheerpelli','session is nice');
Query OK, 1 row affected (0.04 sec)

mysql> insert into feedback values('f105','s105','2026-04-07','santosh koduri','session is good');
Query OK, 1 row affected (0.01 sec)

mysql> select* from feedback;
+-------------+------------+---------------------+------------------+----------------------+
| feedback_id | student_id | date                | InstructorName   | feedback             |
+-------------+------------+---------------------+------------------+----------------------+
| f101        | s101       | 2026-05-03 00:00:00 | vaishnavi koduri | session is good      |
| f102        | s101       | 2026-03-04 00:00:00 | lavanya gajula   | session is excellent |
| f103        | s103       | 2026-02-05 00:00:00 | aparna sheelar   | session is nice      |
| f104        | s104       | 2026-04-07 00:00:00 | sai cheerpelli   | session is nice      |
| f105        | s105       | 2026-04-07 00:00:00 | santosh koduri   | session is good      |
+-------------+------------+---------------------+------------------+----------------------+
5 rows in set (0.00 sec)
