16.Produce the following output
EMPLOYEE AND JOB
SMITH CLERK
ALLEN SALESMAN
 mysql> SELECT CONCAT(ename, ' ', job) AS "EMPLOYEE AND JOB" FROM
Employee WHERE ename IN ('SMITH', 'ALLEN') order by ename desc;
+--------------------+
| EMPLOYEE AND JOB |
+--------------------+
| Smith Clerk |
| Allen Salesman |
+--------------------+
2 rows in set (0.00 sec)

17.Produce the following output
EMPLOYEE AND JOB
SMITH(Clerk)
ALLEN(Salesman)
 mysql> SELECT CONCAT(ename, '(', job, ')') AS "EMPLOYEE AND JOB" FROM
Employee WHERE ename IN ('SMITH', 'ALLEN') order by ename desc;
+------------------+
| EMPLOYEE AND JOB |
+------------------+
| Smith(Clerk) |
| Allen(Salesman) |
+------------------+
2 rows in set (0.00 sec)

18. Find the minimum, maximum, and average salaries of all employees.
mysql> SELECT MIN(salary), MAX(salary), AVG(salary) FROM Employee;
+-------------+-------------+-------------+
| MIN(salary) | MAX(salary) | AVG(salary) |
+-------------+-------------+-------------+
| 800 | 2975 | 1575.0000 |
+-------------+-------------+-------------+

19. List the minimum and maximum salary for each job.
 mysql> SELECT job, MIN(salary), MAX(salary) FROM Employee GROUP BY job;
+----------+-------------+-------------+
| job | MIN(salary) | MAX(salary) |
+----------+-------------+-------------+
| Salesman | 1250 | 1600 |
| Clerk | 800 | 800 |
| Manager | 2975 | 2975 |
+----------+-------------+-------------+
3 rows in set (0.00 sec)

20. Find how many managers are there without listing them.
 mysql> SELECT COUNT(*) FROM Employee WHERE job = 'Manager';
+----------+
| COUNT(*) |
+----------+
1 row in set (0.00 sec)

21.Find the average salary and average total remuneration for each job.
 mysql> SELECT job, AVG(salary) AS avg_salary,
 AVG(salary + IFNULL(commision, 0)) AS avg_total
 FROM Employee
 GROUP BY job;

+----------+------------+-----------+
| job | avg_salary | avg_total |
+----------+------------+-----------+
| Salesman | 1366.6667 | 2100.0000 |
| Clerk | 800.0000 | 800.0000 |
| Manager | 2975.0000 | 2975.0000 |
+----------+------------+-----------+
3 rows in set (0.00 sec)

22. Find the difference between highest and lowest salaries.
 mysql> SELECT MAX(salary) - MIN(salary) AS salary_difference FROM Employee;
+-------------------+
| salary_difference |
+-------------------+
| 2175 |
+-------------------+
1 row in set (0.00 sec)

23. Find all departments having more than 3 employees.
 mysql> SELECT deptno,JOB, COUNT(*) as emp_count
 FROM Employee
 GROUP BY deptno
 HAVING COUNT(*) > 2;
+--------+----------+-----------+
| deptno | JOB | emp_count |
+--------+----------+-----------+
| 30 | Salesman | 3 |
+--------+----------+-----------+
1 row in set (0.00 sec)

24. Check whether all employee numbers are unique.
 mysql> SELECT empno, COUNT(*)
 FROM Employee
 GROUP BY empno
 HAVING COUNT(*) > 1;
Empty set (0.00 sec
