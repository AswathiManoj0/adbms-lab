1.Insert atleast 5 values to each table(must include the following values)
a.job-clerk,salesman,manager etc
b.department name-accounting,research,sales etc
c.employee name – allen,smith,ward etc.
d.dept number -10,20
e.Location-US
mysql> INSERT INTO Department VALUES
 (10, 'Accounting', 'US'),
 (20, 'Research', 'US'),
 (30, 'Sales', 'US'),
 (40, 'Marketing', 'US'),
 (50, 'IT', 'US');
Query OK, 5 rows affected (0.01 sec)
Records: 5 Duplicates: 0 Warnings: 0
mysql> INSERT INTO Employee VALUES
 (1001, 'Allen', 'Salesman', 1005, '1981-06-01', 1600, 300, 30),
 (1002, 'Smith', 'Clerk', 1006, '1987-12-09', 800, NULL, 20),
 (1003, 'Ward', 'Salesman', 1005, '1981-02-22', 1250, 500, 30),
 (1004, 'Jones', 'Manager', 1007, '1981-04-02', 2975, NULL, 20),
 (1005, 'Martin', 'Salesman', 1006, '1981-09-28', 1250, 1400, 30);
Query OK, 5 rows affected (0.01 sec)
Records: 5 Duplicates: 0 Warnings: 0
mysql> INSERT INTO SalaryGrade VALUES
 (1, 700, 1200),
 (2, 1201, 1400),
 (3, 1401, 2000),
 (4, 2001, 3000),
 (5, 3001, 9999);
Query OK, 5 rows affected (0.00 sec)
Records: 5 Duplicates: 0 Warnings: 0

  2.Select all information from table employee.
mysql> SELECT * FROM Employee;
+-------+--------+----------+-----------+------------+--------+-----------+--------+
| empno | ename | JOB | managerid | hiredate | salary | commision | deptno |
+-------+--------+----------+-----------+------------+--------+-----------+--------+
| 1001 | Allen | Salesman | 1005 | 1981-06-01 | 1600 | 300 | 30 |
| 1002 | Smith | Clerk | 1006 | 1987-12-09 | 800 | NULL | 20 |
| 1003 | Ward | Salesman | 1005 | 1981-02-22 | 1250 | 500 | 30 |
| 1004 | Jones | Manager | 1007 | 1981-04-02 | 2975 | NULL | 20 |
| 1005 | Martin | Salesman | 1006 | 1981-09-28 | 1250 | 1400 | 30 |
+-------+--------+----------+-----------+------------+--------+-----------+--------+
5 rows in set (0.00 sec)

  3. Select all information from table department
 mysql> SELECT * FROM Department;
+--------+------------+----------+
| deptno | deptname | location |
+--------+------------+----------+
| 10 | Accounting | US |
| 20 | Research | US |
| 30 | Sales | US |
| 40 | Marketing | US |
| 50 | IT | US |
+--------+------------+----------+
5 rows in set (0.00 sec)

4.Select all information from table salarygrade.
mysql> SELECT * FROM SalaryGrade;
+-------+-----------+------------+
| grade | lowsalary | highsalary |
+-------+-----------+------------+
| 1 | 700 | 1200 |
| 2 | 1201 | 1400 |
| 3 | 1401 | 2000 |
| 4 | 2001 | 3000 |
| 5 | 3001 | 9999 |
+-------+-----------+------------+
5 rows in set (0.00 sec)

  5.Select empno,ename form table employee.
mysql> SELECT empno, ename FROM Employee;
+-------+--------+
| empno | ename |
+-------+--------+
| 1001 | Allen |
| 1002 | Smith |
| 1003 | Ward |
| 1004 | Jones |
| 1005 | Martin |
+-------+--------+
5 rows in set (0.00 sec)

st all employees having a salary range between 1000 and 2000
 mysql> SELECT * FROM Employee WHERE salary BETWEEN 1000 AND 2000;
+-------+--------+----------+-----------+------------+--------+-----------+--------+
| empno | ename | JOB | managerid | hiredate | salary | commision | deptno |
+-------+--------+----------+-----------+------------+--------+-----------+--------+
| 1001 | Allen | Salesman | 1005 | 1981-06-01 | 1600 | 300 | 30 |
| 1003 | Ward | Salesman | 1005 | 1981-02-22 | 1250 | 500 | 30 |
| 1005 | Martin | Salesman | 1006 | 1981-09-28 | 1250 | 1400 | 30 |
+-------+--------+----------+-----------+------------+--------+-----------+--------+
3 rows in set (0.00 sec)
