7.List dname and department number in department name order.
mysql> SELECT deptname, deptno FROM Department ORDER BY deptname;
+------------+--------+
| deptname | deptno |
+------------+--------+
| Accounting | 10 |
| IT | 50 |
| Marketing | 40 |
| Research | 20 |
| Sales | 30 |
+------------+--------+
5 rows in set (0.00 sec)

  8.List the employee details in department 10 and 20
 mysql> SELECT * FROM Employee WHERE deptno IN (10, 20);
+-------+-------+---------+-----------+------------+--------+-----------+--------+
| empno | ename | JOB | managerid | hiredate | salary | commision | deptno |
+-------+-------+---------+-----------+------------+--------+-----------+--------+
| 1002 | Smith | Clerk | 1006 | 1987-12-09 | 800 | NULL | 20 |
| 1004 | Jones | Manager | 1007 | 1981-04-02 | 2975 | NULL | 20 |
+-------+-------+---------+-----------+------------+--------+-----------+--------+
2 rows in set (0.00 sec)

  9.List names and jobs of all clerks in dept 20
mysql> SELECT ename, job FROM Employee WHERE job='Clerk' AND deptno=20;
+-------+-------+
| ename | job |
+-------+-------+
| Smith | Clerk |
+-------+-------+
1 row in set (0.00 sec)

  10.Display all employee names which have TH or LL in name
mysql> SELECT ename FROM Employee WHERE ename LIKE '%TH%' OR ename
LIKE '%LL%';
+-------+
| ename |
+-------+
| Allen |
| Smith |
+-------+
2 rows in set (0.00 sec)

  11.List name,job,and salary of all employees who have a manager.
mysql>SELECT ename, job, salary FROM Employee WHERE managerid IS NOT
NULL;
+--------+----------+--------+
| ename | job | salary |
+--------+----------+--------+
| Allen | Salesman | 1600 |
| Smith | Clerk | 800 |
| Ward | Salesman | 1250 |
| Jones | Manager | 2975 |
| Martin | Salesman | 1250 |
5 rows in set (0.00 sec)

  12.Dispaly name and annual remuneration for all employees.
mysql> SELECT ename, (salary * 12 + IFNULL(commision,0)) AS
annual_remuneration FROM Employee;
+--------+---------------------+
| ename | annual_remuneration |
+--------+---------------------+
| Allen | 19500 |
| Smith | 9600 |
| Ward | 15500 |
| Jones | 35700 |
| Martin | 16400 |
+--------+---------------------+
5 rows in set (0.00 sec)

  13.Display all employees hired during 1987.
mysql> SELECT * FROM Employee WHERE YEAR(hiredate) = 1987;
+-------+-------+-------+-----------+------------+--------+-----------+--------+
| empno | ename | JOB | managerid | hiredate | salary | commision | deptno |
+-------+-------+-------+-----------+------------+--------+-----------+--------+
| 1002 | Smith | Clerk | 1006 | 1987-12-09 | 800 | NULL | 20 |
+-------+-------+-------+-----------+------------+--------+-----------+--------+
1 row in set (0.00 sec)

  14.Display name,job,annual sal,commission of all sales peoples whose
monthly salary greater than commission.The output should be order by salary
highest first.
 mysql> SELECT ename, job, (salary*12) AS annual_sal, commision
 FROM Employee
 WHERE job='Salesman' AND salary > IFNULL(commision, 0)
 ORDER BY salary DESC;
+-------+----------+------------+-----------+
| ename | job | annual_sal | commision |
+-------+----------+------------+-----------+
| Allen | Salesman | 19200 | 300 |
| Ward | Salesman | 15000 | 500 |
+-------+----------+------------+-----------+
2 rows in set (0.00 sec)

  15.List the employee name and salary increased by 12.5%.Express has a
whole number
mysql> SELECT ename, ROUND(salary * 1.125) AS increased_salary FROM
Employee;
+--------+------------------+
| ename | increased_salary |
+--------+------------------+
| Allen | 1800 |
| Smith | 900 |
| Ward | 1406 |
| Jones | 3347 |
| Martin | 1406 |
+--------+------------------+
5 rows in set (0.00 sec) 
