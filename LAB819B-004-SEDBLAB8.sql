/*i.	To display the employee number and name for all employees who earn more 
than the average salary. Sort the results in descending order of salary.*/
select empno ,ename from emp where sal>(select avg(sal) from emp) order by sal desc;

/*ii.	To display the employee name and salary of all employees who report to king. */
select ename ,sal from emp where 
mgr=(select empno from emp where ename ='KING');

/*iii.	To display the department number, name and job for all employees in the Sales department.  */
select d.deptno ,d.dname,e.job from emp e ,dept d where d.dname='SALES';
select deptno ,ename,job from emp where deptno=(select deptno from dept where dname ='SALES') ;

/*iv.	To display the name, hiredate and salary for all employees who have both the same salary and commission as scott. */
select ename ,hiredate,sal from emp where sal=(select sal from emp where ename ='SCOTT') and 
comm=(select comm from emp where ename='SCOTT');


/*v.	To display the employee name, department number and job title for all employees whose location is Dallas. */
select ename ,deptno,job from emp where deptno=(select deptno from dept where loc='DALLAS');

/*vi.	List the id of all employees who have not performed the job of analyst anywhere in their career. (Note: Use set operators) */
SELECT JOB_ID FROM EMPLOYEES
MINUS
SELECT JOB_ID FROM JOBS WHERE JOB_TITLE='PROGRAMMER';

SELECT * FROM JOBS;

SELECT * FROM employees;
SELECT EMPNO FROM EMP WHERE JOB = 'ANALYST'
MINUS
SELECT EMPLOYEE_ID FROM JOB_HISTORY WHERE JOB_ID ='ANALYST' ;


SELECT * FROM EMP;

/*vii.	Write a query to display the employee name and hiredate for all employees in the same department as Blake. Exclude Blake. */
SELECT ENAME ,HIREDATE FROM EMP WHERE DEPTNO=(SELECT DEPTNO FROM EMP WHERE ENAME='BLAKE') AND ENAME !='BLAKE';

/*viii.	Display the employee number, name and salary for all employees who earn more than the average salary 
and who work in department with any employee with a T in their name. */
SELECT EMPNO ,ENAME ,SAL FROM EMP WHERE SAL>(SELECT AVG(SAL) FROM EMP) AND DEPTNO IN (SELECT DEPTNO FROM EMP WHERE ENAME LIKE '%T%');













select * from dept19B004;
select * from emp19B004;

SELECT ename, job FROM emp 
WHERE job = 
	 	 	(SELECT job 
	 	 	 	FROM emp 
	 	 	 	WHERE empno = 7369); 
        
SELECT  ename, job 
FROM  emp 
WHERE  job =  
	 	 	(SELECT  job 
	 	 	FROM  emp 
	 	 	WHERE  empno = 7369) 
AND  sal  > 
	 	 	(SELECT  sal 
	 	 	FROM  emp 
	 	 	WHERE  empno = 7876);
      
SELECT ename, job, sal 
FROM emp 
WHERE sal = 
	 	 	(SELECT MIN(sal) FROM emp); 
      
SELECT  deptno, MIN(sal) 
FROM  emp 
GROUP BY  deptno 
HAVING MIN(sal) > 
	 	 	 	(SELECT MIN(sal) 
	 	 	 	FROM emp 
	 	 	 	WHERE  deptno = 20);
        
SELECT  ename, sal, deptno 
FROM  emp 
WHERE  sal  IN  (SELECT   MIN(sal) 
	 	 	 	FROM  emp 
	 	 	 	GROUP  BY  deptno);
        
SELECT  empno, ename, job  
FROM  emp 
WHERE   sal < ANY  
	 	 	 	 	(SELECT  sal 
	 	 	 	 	FROM  emp 
	 	 	 	 	WHERE   job = 'CLERK') 
AND JOB <> 'CLERK';

SELECT  empno, ename, job 
FROM  emp 
WHERE  sal > ALL 
(SELECT  avg(sal) FROM  emp GROUP BY deptno);
      
SELECT ENAME
FROM EMP 
WHERE (EMPNO, JOB)  
IN  
(SELECT EMPLOYEE_ID, JOB_ID FROM JOB_HISTORY);



SELECT EMPLOYEE_ID, JOB_ID FROM JOB_HISTORY UNION 
SELECT EMPNO, JOB 
FROM EMP;

SELECT EMPLOYEE_ID, JOB_ID FROM JOB_HISTORY UNION ALL 
SELECT EMPNO, JOB 
FROM EMP;

SELECT EMPLOYEE_ID, JOB_ID FROM JOB_HISTORY INTERSECT 
SELECT EMPNO, JOB 
FROM EMP;

SELECT EMPNO, JOB 
FROM EMP 
MINUS 
SELECT EMPLOYEE_ID, JOB_ID 
FROM JOB_HISTORY;

select * from job_history;


