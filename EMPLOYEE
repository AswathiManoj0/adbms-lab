CREATE TABLE EMP(EMPNO INT PRIMARY KEY,ENAME VARCHAR(30),JOB VARCHAR(10),MGR INT,HIREDATE DATE,SAL FLOAT,COMM FLOAT,DEPTNO INT);
mysql> SELECT * FROM EMP;
+-------+--------+----------+------+------------+------+-------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMMA | DEPTNO |
+-------+--------+----------+------+------------+------+-------+--------+
|   101 | SMITH  | CLERK    |  103 | 1987-06-13 |  800 |  NULL |     20 |
|   102 | ALLEN  | SALESMAN |  104 | 1988-09-14 | 1600 |   300 |     30 |
|   103 | WARD   | SALESMAN |  104 | 1988-02-14 | 1200 |   500 |     30 |
|   104 | JONES  | MANAGER  |  106 | 1981-09-02 | 2000 |  NULL |     30 |
|   105 | MARTIN | SALESMAN |  104 | 1988-09-03 | 1400 |  1200 |     30 |
+-------+--------+----------+------+------------+------+-------+--------+
5 rows in set (0.00 sec)


mysql> CREATE TABLE DEPT(DEPTNO INT PRIMARY KEY,DNAME VARCHAR(15),LOC VARCHAR(10));
mysql> SELECT * FROM DEPT;
+--------+------------+----------+
| DEPTNO | DNAME      | LOC      |
+--------+------------+----------+
|     10 | ACCOUNTING | NEW YORK |
|     20 | RESEARCH   | DALLAS   |
|     30 | SALES      | CHICAGO  |
|     40 | OPERATIONS | BOSTON   |
|     50 | HR         | MIAMI    |
+--------+------------+----------+
5 rows in set (0.00 sec)
 CREATE TABLE SALGRADE(GRADE INT PRIMARY KEY,LOSAL INT,HSAL INT);
mysql> SELECT * FROM SALGRADE;
+-------+-------+------+
| GRADE | LOSAL | HSAL |
+-------+-------+------+
|     1 |   700 | 1200 |
|     2 |  1201 | 1400 |
|     3 |  1401 | 2000 |
|     4 |  2001 | 3000 |
|     5 |  3001 | 5000 |
+-------+-------+------+
5 rows in set (0.01 sec)


EMPLOYEES WITH SALARY BETWEEN 1000 AND 2000

SELECT * FROM EMP WHERE SAL BETWEEN 1000 AND 2000;
+-------+--------+----------+------+------------+------+-------+--------+
| EMPNO | ENAME  | JOB      | MGR  | HIREDATE   | SAL  | COMMA | DEPTNO |
+-------+--------+----------+------+------------+------+-------+--------+
|   102 | ALLEN  | SALESMAN |  104 | 1988-09-14 | 1600 |   300 |     30 |
|   103 | WARD   | SALESMAN |  104 | 1988-02-14 | 1200 |   500 |     30 |
|   104 | JONES  | MANAGER  |  106 | 1981-09-02 | 2000 |  NULL |     30 |
|   105 | MARTIN | SALESMAN |  104 | 1988-09-03 | 1400 |  1200 |     30 |
+-------+--------+----------+------+------------+------+-------+--------+

DEPARTMENT NAMES AND NUMBERS IN ALPHABETICAL ORDER

mysql> SELECT DNAME,DEPTNO FROM DEPT ORDER BY DNAME;
+------------+--------+
| DNAME      | DEPTNO |
+------------+--------+
| ACCOUNTING |     10 |
| HR         |     50 |
| OPERATIONS |     40 |
| RESEARCH   |     20 |
| SALES      |     30 |
+------------+--------+

EMPLOYEES IN DEPARTMENT 10 AND 20

SELECT * FROM EMP WHERE DEPTNO IN(10,20);
+-------+-------+-------+------+------------+------+-------+--------+
| EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL  | COMMA | DEPTNO |
+-------+-------+-------+------+------------+------+-------+--------+
|   101 | SMITH | CLERK |  103 | 1987-06-13 |  800 |  NULL |     20 |
+-------+-------+-------+------+------------+------+-------+--------+


NAMES AND JOBS OF ALL CLERKS IN DEPT 20
 SELECT ENAME,JOB FROM EMP WHERE JOB='CLERK' AND DEPTNO=20;
+-------+-------+
| ENAME | JOB   |
+-------+-------+
| SMITH | CLERK |
+-------+-------+

EMPLOYEE NAMES WITH TH OR LL
SELECT ENAME FROM EMP WHERE ENAME LIKE '%TH%' OR ENAME LIKE '%LL%';
+-------+
| ENAME |
+-------+
| SMITH |
| ALLEN |
+-------+
