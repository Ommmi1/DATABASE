CREATE VIEW empvu19B004 
AS SELECT empno, ename, job 
FROM emp 
WHERE deptno = 10;

DESCRIBE empvu19B004;

CREATE VIEW salvu19B004 
AS SELECT empno EMPLOYEE_NUMBER, ename NAME, sal SALARY 
FROM emp 
WHERE deptno = 30;

SELECT * 
FROM salvu19B004;

CREATE VIEW EMP_DEPT19B004 
AS 
SELECT EMPNO, ENAME, DNAME 
FROM EMP, DEPT 
WHERE EMP.DEPTNO = DEPT.DEPTNO;

CREATE VIEW dept_sum_vu19B004 (name, minsal, maxsal, avgsal) 
AS SELECT d.dname, MIN(e.sal), MAX(e.sal), AVG(e.sal) 
FROM EMP e, DEPT d 
WHERE e.DEPTNO = d.DEPTNO 
GROUP BY d.dname;

DROP VIEW empvu19B004;

CREATE OR REPLACE VIEW Current_ProductList 
AS
SELECT ProductID,ProductName,CategoryID
FROM Products
WHERE Discontinued = 0;
