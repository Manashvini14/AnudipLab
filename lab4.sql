/*
Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns: CourseId,CourseName  and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.create database StudentManagementSystem;
*/
mysql> create database StudentManagementSystem2;
Query OK, 1 row affected (0.04 sec)

mysql> use StudentManagementSystem2;
Database changed

mysql> create table student(studentId int primary key,FirstName varchar(50),LastName varchar(50));
Query OK, 0 rows affected (0.11 sec)

mysql> create table course(courseId int primary key,courseName varchar(100));
Query OK, 0 rows affected (0.04 sec)

mysql> create table Enrollment(enrollmentId int primary key,studentId int,courseId int, foreign  key (studentId)references student(studentId),foreign key (courseID) references course(courseId));
Query OK, 0 rows affected (0.07 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| studentId | int         | NO   | PRI | NULL    |       |
| FirstName | varchar(50) | YES  |     | NULL    |       |
| LastName  | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> desc course;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| courseId   | int          | NO   | PRI | NULL    |       |
| courseName | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc enrollment;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| enrollmentId | int  | NO   | PRI | NULL    |       |
| studentId    | int  | YES  | MUL | NULL    |       |
| courseId     | int  | YES  | MUL | NULL    |       |
+--------------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into student values(1,'Virat','kholi');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(2,'Laxminarayana','Gajula');
Query OK, 1 row affected (0.02 sec)

mysql> insert into student values(3,'Rohit','sharma');
Query OK, 1 row affected (0.02 sec)

mysql> insert into course values(101,'web developmenr');
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values(102,'database management');
Query OK, 1 row affected (0.02 sec)

mysql> insert into course values(103,'full stack java');
Query OK, 1 row affected (0.02 sec)

mysql> select*from student;
+-----------+---------------+----------+
| studentId | FirstName     | LastName |
+-----------+---------------+----------+
|         1 | Virat         | kholi    |
|         2 | Laxminarayana | Gajula   |
|         3 | Rohit         | sharma   |
+-----------+---------------+----------+
3 rows in set (0.00 sec)

mysql> select*from course;
+----------+---------------------+
| courseId | courseName          |
+----------+---------------------+
|      101 | web developmenr     |
|      102 | database management |
|      103 | full stack java     |
+----------+---------------------+
3 rows in set (0.00 sec)

mysql> insert into enrollment values(1,1,101);
Query OK, 1 row affected (0.02 sec)

mysql> insert into enrollment values(2,2,102);
Query OK, 1 row affected (0.02 sec)

mysql> insert into enrollment values(3,1,103);
Query OK, 1 row affected (0.02 sec)

mysql> insert into enrollment values(4,3,101);
Query OK, 1 row affected (0.02 sec)

mysql> select*from enrollment;
+--------------+-----------+----------+
| enrollmentId | studentId | courseId |
+--------------+-----------+----------+
|            1 |         1 |      101 |
|            2 |         2 |      102 |
|            3 |         1 |      103 |
|            4 |         3 |      101 |
+--------------+-----------+----------+
4 rows in set (0.00 sec)

mysql> select student.studentid,student.FirstName,student.LastName,course.courseid,course.courseName from enrollment inner join student on enrollment.studentId=student.studentid inner join course on enrollment.courseId=course.courseid;
+-----------+---------------+----------+----------+---------------------+
| studentid | FirstName     | LastName | courseid | courseName          |
+-----------+---------------+----------+----------+---------------------+
|         1 | Virat         | kholi    |      101 | web development     |
|         1 | Virat         | kholi    |      103 | full stack java     |
|         2 | Laxminarayana | Gajula   |      102 | database management |
|         3 | Rohit         | sharma   |      101 | web development     |
+-----------+---------------+----------+----------+---------------------+
4 rows in set (0.00 sec)