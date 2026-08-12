Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 8.0.39 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create table visunu (visunu int, name VARCHAR(30), salary int);
ERROR 1046 (3D000): No database selected
mysql> CREATE DATABASE visunu
    -> USE visunu
    -> create table visunu (visunu int, name VARCHAR(30), salary int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'USE visunu
create table visunu (visunu int, name VARCHAR(30), salary int)' at line 2
mysql> CREATE DATABASE my_database;
Query OK, 1 row affected (0.01 sec)

mysql> create table visunu (visunu int, name VARCHAR(30), salary int);
ERROR 1046 (3D000): No database selected
mysql> USE my_database;
Database changed
mysql> create table visunu (visunu int, name VARCHAR(30), salary int);
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO visunu values(01,'pig man',5000);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO visunu values(02,'alien',3000);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO visunu values(03,'Dogesh',2000);
Query OK, 1 row affected (0.00 sec)

mysql> DELIMITER//
    -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    -> DECLARE C INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
BEGIN
DECLARE C INT' at line 1
mysql> DELIMITER//
    -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLARE C INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
BEGIN
  DECLARE C I' at line 1
mysql> DELIMITER//
    -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLARE C INT
    ->   SET c=a+b
    ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
BEGIN
  DECLARE C I' at line 1
mysql> DELIMITER//
    -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLARE C INT
    ->   SET c=a+b
    ->   SELECT CONCAT('Sum of two numbers=',c)AS Result
    -> END//
    -> DELIMITER;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
BEGIN
  DECLARE C I' at line 1
mysql> DELIMITER//
    -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    -> DECLARE c INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
BEGIN
DECLARE c INT' at line 1
mysql> DELIMITER//
    -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLARE c INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
BEGIN
  DECLARE c I' at line 1
mysql> DELIMITER//
    -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLARE C INT
    ->   SET c=a+b
    ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
BEGIN
  DECLARE C I' at line 1
mysql> DELIMITER//
    -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    -> DECLARE C INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
BEGIN
DECLARE C INT' at line 1
mysql> DELIMITER//
    -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->    DECLARE C INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
BEGIN
   DECLARE C ' at line 1
mysql> DELIMITER //
mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLARE C INT;
    ->   SET c=a+b
    ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    -> END //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT CONCAT('Sum of two numbers=',c)AS Result;
END' at line 5
mysql> DELIMITER //
mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   SET c= a + b;
    ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    -> END //
ERROR 1193 (HY000): Unknown system variable 'c'
mysql> DELIMITER //
mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    -> DECLARE c INT;
    ->   SET c= a + b;
    ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql> CALL SumProcedure(10,20);
    -> SHOW PROCEDURE STATUS WHERE db = my_database();\
    -> SHOW PROCEDURE STATUS WHERE db = my_database();
    -> CALL SumProcedure(10,20);
    -> DELIMITER;
    -> CALL SumProcedure(10,20);
    -> ;
    -> /
    -> ;
    -> //
+-----------------------+
| Result                |
+-----------------------+
| Sum of two numbers=30 |
+-----------------------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

ERROR 1305 (42000): FUNCTION my_database.my_database does not exist
mysql> mysql> create table visunu (visunu int, name VARCHAR(30), salary int);
    -> ERROR 1046 (3D000): No database selected
    -> mysql> CREATE DATABASE visunu
    ->     -> USE visunu
    ->     -> create table visunu (visunu int, name VARCHAR(30), salary int);
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'USE visunu
    '> create table visunu (visunu int, name VARCHAR(30), salary int)' at line 2
    -> mysql> CREATE DATABASE my_database;
    -> Query OK, 1 row affected (0.01 sec)
    ->
    -> mysql> create table visunu (visunu int, name VARCHAR(30), salary int);
    -> ERROR 1046 (3D000): No database selected
    -> mysql> USE my_database;
    -> Database changed
    -> mysql> create table visunu (visunu int, name VARCHAR(30), salary int);
    -> Query OK, 0 rows affected (0.02 sec)
    ->
    -> mysql> INSERT INTO visunu values(01,'pig man',5000);
    -> Query OK, 1 row affected (0.01 sec)
    ->
    -> mysql> INSERT INTO visunu values(02,'alien',3000);
    -> Query OK, 1 row affected (0.00 sec)
    ->
    -> mysql> INSERT INTO visunu values(03,'Dogesh',2000);
    -> Query OK, 1 row affected (0.00 sec)
    ->
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> create table visunu (visunu int, name VARCHAR(30), salary int);
ERROR 104' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     -> DECLARE C INT;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '> DECLARE C INT' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    -> DECLARE' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   DECLARE C INT;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '>   DECLARE C I' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLA' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   DECLARE C INT
    ->     ->   SET c=a+b
    ->     ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '>   DECLARE C I' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLA' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   DECLARE C INT
    ->     ->   SET c=a+b
    ->     ->   SELECT CONCAT('Sum of two numbers=',c)AS Result
    ->     -> END//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLA' at line 1
mysql>     -> DELIMITER;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '>   DECLARE C I' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> DELIMITER;
ERROR 1064 (42000): You have an error in your SQL syntax; check th' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     -> DECLARE c INT;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '> DECLARE c INT' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    -> DECLARE' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   DECLARE c INT;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '>   DECLARE c I' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLA' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   DECLARE C INT
    ->     ->   SET c=a+b
    ->     ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '>   DECLARE C I' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLA' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     -> DECLARE C INT;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '> DECLARE C INT' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    -> DECLARE' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->    DECLARE C INT;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '>    DECLARE C ' at line 1
    -> mysql> DELIMITER //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->    DECL' at line 1
mysql> mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   DECLARE C INT;
    ->     ->   SET c=a+b
    ->     ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    ->     -> END //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   D' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT CONCAT('Sum of two numbers=',c)AS Result;
    '> END' at line 5
    -> mysql> DELIMITER //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that ' at line 1
mysql> mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   SET c= a + b;
    ->     ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    ->     -> END //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   S' at line 1
mysql> ERROR 1193 (HY000): Unknown system variable 'c'
    -> mysql> DELIMITER //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1193 (HY000): Unknown system variable 'c'
mysql> DELIMITER' at line 1
mysql> mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     -> DECLARE c INT;
    ->     ->   SET c= a + b;
    ->     ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    ->     -> END //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    -> DEC' at line 1
mysql> Query OK, 0 rows affected (0.02 sec)
    ->
    -> mysql> CALL SumProcedure(10,20);
    ->     -> SHOW PROCEDURE STATUS WHERE db = my_database();\
    ->     -> SHOW PROCEDURE STATUS WHERE db = my_database();
    ->     -> CALL SumProcedure(10,20);
    ->     -> DELIMITER;
    ->     -> CALL SumProcedure(10,20);
    ->     -> ;
    ->     -> /
    ->     -> ;
    ->     -> //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.02 sec)

mysql> CALL SumProcedure(10,20);
    -> SH' at line 1
mysql> +-----------------------+
    -> | Result                |
    -> +-----------------------+
    -> | Sum of two numbers=30 |
    -> +-----------------------+
    -> 1 row in set (0.01 sec)
    ->
    -> Query OK, 0 rows affected (0.01 sec)
    ->
    -> ERROR 1305 (42000): FUNCTION my_database.my_database does not exist
    -> mysql>mysql> create table visunu (visunu int, name VARCHAR(30), salary int);
    -> ERROR 1046 (3D000): No database selected
    -> mysql> CREATE DATABASE visunu
    ->     -> USE visunu
    ->     -> create table visunu (visunu int, name VARCHAR(30), salary int);
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'USE visunu
    '> create table visunu (visunu int, name VARCHAR(30), salary int)' at line 2
    -> mysql> CREATE DATABASE my_database;
    -> Query OK, 1 row affected (0.01 sec)
    ->
    -> mysql> create table visunu (visunu int, name VARCHAR(30), salary int);
    -> ERROR 1046 (3D000): No database selected
    -> mysql> USE my_database;
    -> Database changed
    -> mysql> create table visunu (visunu int, name VARCHAR(30), salary int);
    -> Query OK, 0 rows affected (0.02 sec)
    ->
    -> mysql> INSERT INTO visunu values(01,'pig man',5000);
    -> Query OK, 1 row affected (0.01 sec)
    ->
    -> mysql> INSERT INTO visunu values(02,'alien',3000);
    -> Query OK, 1 row affected (0.00 sec)
    ->
    -> mysql> INSERT INTO visunu values(03,'Dogesh',2000);
    -> Query OK, 1 row affected (0.00 sec)
    ->
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+-----------------------+
| Result                |
+-----------------------+
| ' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     -> DECLARE C INT;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '> DECLARE C INT' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    -> DECLARE' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   DECLARE C INT;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '>   DECLARE C I' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLA' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   DECLARE C INT
    ->     ->   SET c=a+b
    ->     ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '>   DECLARE C I' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLA' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   DECLARE C INT
    ->     ->   SET c=a+b
    ->     ->   SELECT CONCAT('Sum of two numbers=',c)AS Result
    ->     -> END//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLA' at line 1
mysql>     -> DELIMITER;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '>   DECLARE C I' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> DELIMITER;
ERROR 1064 (42000): You have an error in your SQL syntax; check th' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     -> DECLARE c INT;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '> DECLARE c INT' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    -> DECLARE' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   DECLARE c INT;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '>   DECLARE c I' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLA' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   DECLARE C INT
    ->     ->   SET c=a+b
    ->     ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '>   DECLARE C I' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   DECLA' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     -> DECLARE C INT;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '> DECLARE C INT' at line 1
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    -> DECLARE' at line 1
mysql>     -> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->    DECLARE C INT;
    -> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    '> BEGIN
    '>    DECLARE C ' at line 1
    -> mysql> DELIMITER //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->    DECL' at line 1
mysql> mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   DECLARE C INT;
    ->     ->   SET c=a+b
    ->     ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    ->     -> END //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   D' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT CONCAT('Sum of two numbers=',c)AS Result;
    '> END' at line 5
    -> mysql> DELIMITER //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that ' at line 1
mysql> mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     ->   SET c= a + b;
    ->     ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    ->     -> END //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    ->   S' at line 1
mysql> ERROR 1193 (HY000): Unknown system variable 'c'
    -> mysql> DELIMITER //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1193 (HY000): Unknown system variable 'c'
mysql> DELIMITER' at line 1
mysql> mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    ->     -> BEGIN
    ->     -> DECLARE c INT;
    ->     ->   SET c= a + b;
    ->     ->   SELECT CONCAT('Sum of two numbers=',c)AS Result;
    ->     -> END //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> CREATE PROCEDURE sumProcedure(IN a INT, IN b INT)
    -> BEGIN
    -> DEC' at line 1
mysql> Query OK, 0 rows affected (0.02 sec)
    ->
    -> mysql> CALL SumProcedure(10,20);
    ->     -> SHOW PROCEDURE STATUS WHERE db = my_database();\
    ->     -> SHOW PROCEDURE STATUS WHERE db = my_database();
    ->     -> CALL SumProcedure(10,20);
    ->     -> DELIMITER;
    ->     -> CALL SumProcedure(10,20);
    ->     -> ;
    ->     -> /
    ->     -> ;
    ->     -> //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.02 sec)

mysql> CALL SumProcedure(10,20);
    -> SH' at line 1
mysql> +-----------------------+
    -> | Result                |
    -> +-----------------------+
    -> | Sum of two numbers=30 |
    -> +-----------------------+
    -> 1 row in set (0.01 sec)
    ->
    -> Query OK, 0 rows affected (0.01 sec)
    ->
    -> ERROR 1305 (42000): FUNCTION my_database.my_database does not exist
    -> ERROR 1305 (42000): FUNCTION my_database.my_database does not exist
    ->
    -> Query OK, 0 rows affected (0.01 sec)
    -> mysql> DELIMITER//
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+-----------------------+
| Result                |
+-----------------------+
| ' at line 1
mysql> DELIMITER//
ERROR:
DELIMITER must be followed by a 'delimiter' character or string
mysql> DELIMITER //
mysql> CREATE FUNCTION SumFunction(a INT,b INT)
    -> RETURNS INT
    -> DETERMINISTIC
    -> BEGIN
    ->   DECLARE c INT;
    ->   SET c=a+b;
    -> RETURN c;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT SumFunction(5,5) AS Result;
    -> SHOW PROCEDURE STATUS WHERE db = my_database();
    -> SELECT SumFunction(5,5) AS Result;
    -> ;
    -> /
    -> ;
    -> //
+--------+
| Result |
+--------+
|     10 |
+--------+
1 row in set (0.00 sec)

ERROR 1305 (42000): FUNCTION my_database.my_database does not exist
mysql>