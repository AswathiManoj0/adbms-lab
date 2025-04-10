EMPLOYEES WHO HAVE A MANAGER 
mysql>  SELECT ENAME,JOB,SAL FROM EMP WHERE MGR IS NOT NULL;
+--------+----------+------+
| ENAME  | JOB      | SAL  |
+--------+----------+------+
| SMITH  | CLERK    |  800 |
| ALLEN  | SALESMAN | 1600 |
| WARD   | SALESMAN | 1200 |
| JONES  | MANAGER  | 2000 |
| MARTIN | SALESMAN | 1400 |
+--------+----------+------+
5 rows in set (0.00 sec)

NAME AND ANNUAL REMUNERATION
SELECT ENAME,(SAL*12 + IFNULL(COMMA,0))AS ANNUAL_REMUNERATION FROM EMP;
+--------+---------------------+
| ENAME  | ANNUAL_REMUNERATION |
+--------+---------------------+
| SMITH  |                9600 |
| ALLEN  |               19500 |
| WARD   |               14900 |
| JONES  |               24000 |
| MARTIN |               18000 |
+--------+---------------------

EMPLOYEES HIRED IN 1987
mysql> SELECT *FROM EMP WHERE YEAR(HIREDATE)=1987;
+-------+-------+-------+------+------------+------+-------+--------+
| EMPNO | ENAME | JOB   | MGR  | HIREDATE   | SAL  | COMMA | DEPTNO |
+-------+-------+-------+------+------------+------+-------+--------+
|   101 | SMITH | CLERK |  103 | 1987-06-13 |  800 |  NULL |     20 |
+-------+-------+-------+------+------------+------+-------+--------+

SALESPERSON WITH SAL>COMMA

mysql> SELECT ENAME,JOB,SAL *12 AS ANNUAL_SAL,COMMA FROM EMP WHERE JOB='SALESMAN' AND SAL>IFNULL(COMMA,0) ORDER BY SAL DESC;
+--------+----------+------------+-------+
| ENAME  | JOB      | ANNUAL_SAL | COMMA |
+--------+----------+------------+-------+
| ALLEN  | SALESMAN |      19200 |   300 |
| MARTIN | SALESMAN |      16800 |  1200 |
| WARD   | SALESMAN |      14400 |   500 |
+--------+----------+------------+-------+
3 rows in set (0.00 sec)

NAME AND SALARY INCREASED BY 12.5%
mysql> SELECT ENAME,ROUND(SAL*1.125) AS NEW_SALARY FROM EMP;
+--------+------------+
| ENAME  | NEW_SALARY |
+--------+------------+
| SMITH  |        900 |
| ALLEN  |       1800 |
| WARD   |       1350 |
| JONES  |       2250 |
| MARTIN |       1575 |
+--------+------------+
5 rows in set (0.00 sec)

EMPLOYEE AND JOB FORMAT
mysql> SELECT 'EMPLOYEE AND JOB' AS HEADER UNION SELECT ENAME||CHAR(9)||CHAR(9)||JOB FROM EMP;
+------------------+
| HEADER           |
+------------------+
| EMPLOYEE AND JOB |
| 0                |
+------------------+

mysql> SELECT 'EMPLOYEE AND JOB'AS HEADER UNION SELECT CONCAT(ENAME,'(',JOB,')')FROM EMP;
+------------------+
| HEADER           |
+------------------+
| EMPLOYEE AND JOB |
| SMITH(CLERK)     |
| ALLEN(SALESMAN)  |
| WARD(SALESMAN)   |
| JONES(MANAGER)   |
| MARTIN(SALESMAN) |
+------------------+

GENDER NEUTRAL STATEMENT FOR DEPT 30 SALESPEOPLE
mysql> SELECT ENAME,JOB FROM EMP WHERE DEPTNO=30 AND JOB='SALESMAN';
+--------+----------+
| ENAME  | JOB      |
+--------+----------+
| ALLEN  | SALESMAN |
| WARD   | SALESMAN |
| MARTIN | SALESMAN |
+--------+----------+
