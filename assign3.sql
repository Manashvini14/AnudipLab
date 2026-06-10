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
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
9 rows in set (0.01 sec)

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| employee            |
+---------------------+
2 rows in set (0.01 sec)

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
3 rows in set (0.00 sec)

mysql> select* from customer;
+-------------+--------+----------+------------------+------------+---------------+----------+
| customer_id | name   | city     | email            | phone_no   | address       | pin_code |
+-------------+--------+----------+------------------+------------+---------------+----------+
| c101        | laya   | paris    | laya@gmail.com   | 8456972310 | padmanagar    |   421305 |
| c102        | deepu  | thane    | deepu@gmail.com  | 6465846556 | padmanagar    |   421305 |
| c103        | vaishu | kalyan   | vaishu@gmail.com | 2956287666 | shivaji chowk |   421305 |
| c104        | gautam | mumbai   | gautam@gmail.com | 9854445644 | marine        |   421305 |
| c105        | sai    | bhiwandi | sai@gmail.com    | 9854586444 | kamatghar     |   421305 |
+-------------+--------+----------+------------------+------------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select* from customer limit 3;
+-------------+--------+--------+------------------+------------+---------------+----------+
| customer_id | name   | city   | email            | phone_no   | address       | pin_code |
+-------------+--------+--------+------------------+------------+---------------+----------+
| c101        | laya   | paris  | laya@gmail.com   | 8456972310 | padmanagar    |   421305 |
| c102        | deepu  | thane  | deepu@gmail.com  | 6465846556 | padmanagar    |   421305 |
| c103        | vaishu | kalyan | vaishu@gmail.com | 2956287666 | shivaji chowk |   421305 |
+-------------+--------+--------+------------------+------------+---------------+----------+
3 rows in set (0.00 sec)

mysql> select* from customer order by email;
+-------------+--------+----------+------------------+------------+---------------+----------+
| customer_id | name   | city     | email            | phone_no   | address       | pin_code |
+-------------+--------+----------+------------------+------------+---------------+----------+
| c102        | deepu  | thane    | deepu@gmail.com  | 6465846556 | padmanagar    |   421305 |
| c104        | gautam | mumbai   | gautam@gmail.com | 9854445644 | marine        |   421305 |
| c101        | laya   | paris    | laya@gmail.com   | 8456972310 | padmanagar    |   421305 |
| c105        | sai    | bhiwandi | sai@gmail.com    | 9854586444 | kamatghar     |   421305 |
| c103        | vaishu | kalyan   | vaishu@gmail.com | 2956287666 | shivaji chowk |   421305 |
+-------------+--------+----------+------------------+------------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select* from customer order by name;
+-------------+--------+----------+------------------+------------+---------------+----------+
| customer_id | name   | city     | email            | phone_no   | address       | pin_code |
+-------------+--------+----------+------------------+------------+---------------+----------+
| c102        | deepu  | thane    | deepu@gmail.com  | 6465846556 | padmanagar    |   421305 |
| c104        | gautam | mumbai   | gautam@gmail.com | 9854445644 | marine        |   421305 |
| c101        | laya   | paris    | laya@gmail.com   | 8456972310 | padmanagar    |   421305 |
| c105        | sai    | bhiwandi | sai@gmail.com    | 9854586444 | kamatghar     |   421305 |
| c103        | vaishu | kalyan   | vaishu@gmail.com | 2956287666 | shivaji chowk |   421305 |
+-------------+--------+----------+------------------+------------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select* from customer order by email desc;
+-------------+--------+----------+------------------+------------+---------------+----------+
| customer_id | name   | city     | email            | phone_no   | address       | pin_code |
+-------------+--------+----------+------------------+------------+---------------+----------+
| c103        | vaishu | kalyan   | vaishu@gmail.com | 2956287666 | shivaji chowk |   421305 |
| c105        | sai    | bhiwandi | sai@gmail.com    | 9854586444 | kamatghar     |   421305 |
| c101        | laya   | paris    | laya@gmail.com   | 8456972310 | padmanagar    |   421305 |
| c104        | gautam | mumbai   | gautam@gmail.com | 9854445644 | marine        |   421305 |
| c102        | deepu  | thane    | deepu@gmail.com  | 6465846556 | padmanagar    |   421305 |
+-------------+--------+----------+------------------+------------+---------------+----------+
5 rows in set (0.00 sec)

mysql> select* from customer order by email desc limit 3;
+-------------+--------+----------+------------------+------------+---------------+----------+
| customer_id | name   | city     | email            | phone_no   | address       | pin_code |
+-------------+--------+----------+------------------+------------+---------------+----------+
| c103        | vaishu | kalyan   | vaishu@gmail.com | 2956287666 | shivaji chowk |   421305 |
| c105        | sai    | bhiwandi | sai@gmail.com    | 9854586444 | kamatghar     |   421305 |
| c101        | laya   | paris    | laya@gmail.com   | 8456972310 | padmanagar    |   421305 |
+-------------+--------+----------+------------------+------------+---------------+----------+
3 rows in set (0.00 sec)

mysql> select distinct address from customer;
+---------------+
| address       |
+---------------+
| padmanagar    |
| shivaji chowk |
| marine        |
| kamatghar     |
+---------------+
4 rows in set (0.00 sec)

mysql> select* from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       40 |       20000 | gpay         | 2026-06-05 00:00:00 | shipping     |
|      102 | c102        | p102       |       60 |       80000 | phone pay    | 2026-06-02 00:00:00 | shipping     |
|      103 | c103        | p103       |       50 |       45000 | cash         | 2026-06-02 00:00:00 | shipping     |
|      104 | c103        | p103       |       50 |       45000 | cash         | 2026-06-01 00:00:00 | shipping     |
|      105 | c105        | p105       |       50 |       45000 | cash         | 2026-04-01 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.01 sec)

mysql> select* from order_details where order_id between 1 and 3;
Empty set (0.01 sec)

mysql> select* from order_details where order_id between 101 and 104;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       40 |       20000 | gpay         | 2026-06-05 00:00:00 | shipping     |
|      102 | c102        | p102       |       60 |       80000 | phone pay    | 2026-06-02 00:00:00 | shipping     |
|      103 | c103        | p103       |       50 |       45000 | cash         | 2026-06-02 00:00:00 | shipping     |
|      104 | c103        | p103       |       50 |       45000 | cash         | 2026-06-01 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
4 rows in set (0.00 sec)

mysql> select* from order_details where order_id between '2026-06-01' and '2026-06-02';
Empty set, 6 warnings (0.03 sec)

mysql> select* from order_details where order_date between '2026-06-01' and '2026-06-02';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      102 | c102        | p102       |       60 |       80000 | phone pay    | 2026-06-02 00:00:00 | shipping     |
|      103 | c103        | p103       |       50 |       45000 | cash         | 2026-06-02 00:00:00 | shipping     |
|      104 | c103        | p103       |       50 |       45000 | cash         | 2026-06-01 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.00 sec)

mysql> select* from order_details where order_date not between '2026-06-01' and '2026-06-02';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       40 |       20000 | gpay         | 2026-06-05 00:00:00 | shipping     |
|      105 | c105        | p105       |       50 |       45000 | cash         | 2026-04-01 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
2 rows in set (0.00 sec)

mysql> select* from order_details where order_id in('101','102','103');
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       40 |       20000 | gpay         | 2026-06-05 00:00:00 | shipping     |
|      102 | c102        | p102       |       60 |       80000 | phone pay    | 2026-06-02 00:00:00 | shipping     |
|      103 | c103        | p103       |       50 |       45000 | cash         | 2026-06-02 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.11 sec)

mysql> select* from order_details where order_id not in('101','102','103');
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      104 | c103        | p103       |       50 |       45000 | cash         | 2026-06-01 00:00:00 | shipping     |
|      105 | c105        | p105       |       50 |       45000 | cash         | 2026-04-01 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
2 rows in set (0.00 sec)

mysql> select* from order_details where payment_mode is not null;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       40 |       20000 | gpay         | 2026-06-05 00:00:00 | shipping     |
|      102 | c102        | p102       |       60 |       80000 | phone pay    | 2026-06-02 00:00:00 | shipping     |
|      103 | c103        | p103       |       50 |       45000 | cash         | 2026-06-02 00:00:00 | shipping     |
|      104 | c103        | p103       |       50 |       45000 | cash         | 2026-06-01 00:00:00 | shipping     |
|      105 | c105        | p105       |       50 |       45000 | cash         | 2026-04-01 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> select* from order_details where quantity='50' and order_status='delivered';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      105 | c105        | p105       |       50 |       45000 | cash         | 2026-04-01 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.00 sec)

mysql> select* from order_details where quantity='40' and order_status='delivered';
Empty set (0.00 sec)

mysql> select* from order_details where quantity='40' or order_status='delivered';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c101        | p101       |       40 |       20000 | gpay         | 2026-06-05 00:00:00 | shipping     |
|      105 | c105        | p105       |       50 |       45000 | cash         | 2026-04-01 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
2 rows in set (0.00 sec)