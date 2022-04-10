REM   Script: Lab 1
REM   TASK included

-- Create DEPT table which will be the parent table of the EMP table. 
create table dept(   
  deptno     number(2,0),   
  dname      varchar2(14),   
  loc        varchar2(13),   
  constraint pk_dept primary key (deptno)   
);

-- Create the EMP table which has a foreign key reference to the DEPT table.  The foreign key will require that the DEPTNO in the EMP table exist in the DEPTNO column in the DEPT table.
create table emp(   
  empno    number(4,0),   
  ename    varchar2(10),   
  job      varchar2(9),   
  mgr      number(4,0),   
  hiredate date,   
  sal      number(7,2),   
  comm     number(7,2),   
  deptno   number(2,0),   
  constraint pk_emp primary key (empno),   
  constraint fk_deptno foreign key (deptno) references dept (deptno)   
);

-- Insert row into DEPT table using named columns.
insert into DEPT (DEPTNO, DNAME, LOC) 
values(10, 'ACCOUNTING', 'NEW YORK');

-- Insert a row into DEPT table by column position.
insert into dept   
values(20, 'RESEARCH', 'DALLAS');

insert into dept   
values(30, 'SALES', 'CHICAGO');

insert into dept  
values(40, 'OPERATIONS', 'BOSTON');

-- Insert EMP row, using TO_DATE function to cast string literal into an oracle DATE format.
insert into emp   
values(   
 7839, 'KING', 'PRESIDENT', null,   
 to_date('17-11-1981','dd-mm-yyyy'),   
 5000, null, 10   
);

insert into emp  
values(  
 7698, 'BLAKE', 'MANAGER', 7839,  
 to_date('1-5-1981','dd-mm-yyyy'),  
 2850, null, 30  
);

insert into emp  
values(  
 7782, 'CLARK', 'MANAGER', 7839,  
 to_date('9-6-1981','dd-mm-yyyy'),  
 2450, null, 10  
);

insert into emp  
values(  
 7566, 'JONES', 'MANAGER', 7839,  
 to_date('2-4-1981','dd-mm-yyyy'),  
 2975, null, 20  
);

insert into emp  
values(  
 7788, 'SCOTT', 'ANALYST', 7566,  
 to_date('13-JUL-87','dd-mm-rr') - 85,  
 3000, null, 20  
);

insert into emp  
values(  
 7902, 'FORD', 'ANALYST', 7566,  
 to_date('3-12-1981','dd-mm-yyyy'),  
 3000, null, 20  
);

insert into emp  
values(  
 7369, 'SMITH', 'CLERK', 7902,  
 to_date('17-12-1980','dd-mm-yyyy'),  
 800, null, 20  
);

insert into emp  
values(  
 7499, 'ALLEN', 'SALESMAN', 7698,  
 to_date('20-2-1981','dd-mm-yyyy'),  
 1600, 300, 30  
);

insert into emp  
values(  
 7521, 'WARD', 'SALESMAN', 7698,  
 to_date('22-2-1981','dd-mm-yyyy'),  
 1250, 500, 30  
);

insert into emp  
values(  
 7654, 'MARTIN', 'SALESMAN', 7698,  
 to_date('28-9-1981','dd-mm-yyyy'),  
 1250, 1400, 30  
);

insert into emp  
values(  
 7844, 'TURNER', 'SALESMAN', 7698,  
 to_date('8-9-1981','dd-mm-yyyy'),  
 1500, 0, 30  
);

insert into emp  
values(  
 7876, 'ADAMS', 'CLERK', 7788,  
 to_date('13-JUL-87', 'dd-mm-rr') - 51,  
 1100, null, 20  
);

insert into emp  
values(  
 7900, 'JAMES', 'CLERK', 7698,  
 to_date('3-12-1981','dd-mm-yyyy'),  
 950, null, 30  
);

insert into emp  
values(  
 7934, 'MILLER', 'CLERK', 7782,  
 to_date('23-1-1982','dd-mm-yyyy'),  
 1300, null, 10  
);

-- Simple natural join between DEPT and EMP tables based on the primary key of the DEPT table DEPTNO, and the DEPTNO foreign key in the EMP table.
select ename, dname, job, empno, hiredate, loc   
from emp, dept   
where emp.deptno = dept.deptno   
order by ename;

-- The GROUP BY clause in the SQL statement allows aggregate functions of non grouped columns.  The join is an inner join thus departments with no employees are not displayed.
select dname, count(*) count_of_employees 
from dept, emp 
where dept.deptno = emp.deptno 
group by DNAME 
order by 2 desc;

SELECT  * | {[DISTINCT] column | expression [alias], …}   
FROM  table  
[WHERE  condition];

SELECT  * | {[DISTINCT] column | expression [alias]}   
FROM  table  
[WHERE  condition];

SELECT  * | {[DISTINCT] column | expression [alias]}   
FROM  table  
[WHERE  condition];

SELECT * FROM HR.EMPLOYEES;

SELECT * FROM HR.EMPLOYEES;

SELECT * FROM HR.EMPLOYEES;

SELECT * FROM EMP;

-- Create DEPT table which will be the parent table of the EMP table. 
create table dept(   
  deptno     number(2,0),   
  dname      varchar2(14),   
  loc        varchar2(13),   
  constraint pk_dept primary key (deptno)   
);

-- Create the EMP table which has a foreign key reference to the DEPT table.  The foreign key will require that the DEPTNO in the EMP table exist in the DEPTNO column in the DEPT table.
create table emp(   
  empno    number(4,0),   
  ename    varchar2(10),   
  job      varchar2(9),   
  mgr      number(4,0),   
  hiredate date,   
  sal      number(7,2),   
  comm     number(7,2),   
  deptno   number(2,0),   
  constraint pk_emp primary key (empno),   
  constraint fk_deptno foreign key (deptno) references dept (deptno)   
);

-- Insert row into DEPT table using named columns.
insert into DEPT (DEPTNO, DNAME, LOC) 
values(10, 'ACCOUNTING', 'NEW YORK');

-- Insert a row into DEPT table by column position.
insert into dept   
values(20, 'RESEARCH', 'DALLAS');

insert into dept   
values(30, 'SALES', 'CHICAGO');

insert into dept  
values(40, 'OPERATIONS', 'BOSTON');

-- Insert EMP row, using TO_DATE function to cast string literal into an oracle DATE format.
insert into emp   
values(   
 7839, 'KING', 'PRESIDENT', null,   
 to_date('17-11-1981','dd-mm-yyyy'),   
 5000, null, 10   
);

insert into emp  
values(  
 7698, 'BLAKE', 'MANAGER', 7839,  
 to_date('1-5-1981','dd-mm-yyyy'),  
 2850, null, 30  
);

insert into emp  
values(  
 7782, 'CLARK', 'MANAGER', 7839,  
 to_date('9-6-1981','dd-mm-yyyy'),  
 2450, null, 10  
);

insert into emp  
values(  
 7566, 'JONES', 'MANAGER', 7839,  
 to_date('2-4-1981','dd-mm-yyyy'),  
 2975, null, 20  
);

insert into emp  
values(  
 7788, 'SCOTT', 'ANALYST', 7566,  
 to_date('13-JUL-87','dd-mm-rr') - 85,  
 3000, null, 20  
);

insert into emp  
values(  
 7902, 'FORD', 'ANALYST', 7566,  
 to_date('3-12-1981','dd-mm-yyyy'),  
 3000, null, 20  
);

insert into emp  
values(  
 7369, 'SMITH', 'CLERK', 7902,  
 to_date('17-12-1980','dd-mm-yyyy'),  
 800, null, 20  
);

insert into emp  
values(  
 7499, 'ALLEN', 'SALESMAN', 7698,  
 to_date('20-2-1981','dd-mm-yyyy'),  
 1600, 300, 30  
);

insert into emp  
values(  
 7521, 'WARD', 'SALESMAN', 7698,  
 to_date('22-2-1981','dd-mm-yyyy'),  
 1250, 500, 30  
);

insert into emp  
values(  
 7654, 'MARTIN', 'SALESMAN', 7698,  
 to_date('28-9-1981','dd-mm-yyyy'),  
 1250, 1400, 30  
);

insert into emp  
values(  
 7844, 'TURNER', 'SALESMAN', 7698,  
 to_date('8-9-1981','dd-mm-yyyy'),  
 1500, 0, 30  
);

insert into emp  
values(  
 7876, 'ADAMS', 'CLERK', 7788,  
 to_date('13-JUL-87', 'dd-mm-rr') - 51,  
 1100, null, 20  
);

insert into emp  
values(  
 7900, 'JAMES', 'CLERK', 7698,  
 to_date('3-12-1981','dd-mm-yyyy'),  
 950, null, 30  
);

insert into emp  
values(  
 7934, 'MILLER', 'CLERK', 7782,  
 to_date('23-1-1982','dd-mm-yyyy'),  
 1300, null, 10  
);

-- Simple natural join between DEPT and EMP tables based on the primary key of the DEPT table DEPTNO, and the DEPTNO foreign key in the EMP table.
select ename, dname, job, empno, hiredate, loc   
from emp, dept   
where emp.deptno = dept.deptno   
order by ename;

-- The GROUP BY clause in the SQL statement allows aggregate functions of non grouped columns.  The join is an inner join thus departments with no employees are not displayed.
select dname, count(*) count_of_employees 
from dept, emp 
where dept.deptno = emp.deptno 
group by DNAME 
order by 2 desc;

SELECT * FROM EMP;

SELECT  *  
FROM  EMP ;

SELECT  *  
FROM  EMP  
WHERE (SAL BETWEEN 3500 AND 5000) AND HIREDATE >  
TO_DATE('31-JUL-1981', 'DD-MON-YYYY');

SELECT  *  FROM EMP  
WHERE (JOB = 'CLERK' OR JOB = 'ANALYST') AND HIREDATE BETWEEN TO_DATE('23-JUL-1981', 'DD-MON-YYYY') AND  
TO_DATE('14-MAY-1982', 'DD-MON-YYYY');

SELECT EMPNO, ENAME, JOB  
FROM EMP;

SELECT EMPNO, ENAME, SAL  
FROM EMP ;

SELECT E.ENAME, E.JOB, D.DNAME  
FROM EMP E, DEPT D  
WHERE E.DEPTNO = D.DEPTNO;

SELECT * FROM EMP WHERE JOB <> 'MANAGER';

SELECT EMPNO, ENAME, SAL, MGR FROM EMP WHERE MGR IN (7902, 7566, 7788);

SELECT ENAME FROM EMP WHERE ENAME LIKE ‘S%’;

SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%';

SELECT ENAME FROM EMP WHERE ENAME LIKE '_A%';

SELECT empno, ename, job, sal  
FROM emp  
WHERE sal >= 1100  
AND job = 'CLERK';

SELECT empno, ename, job, sal  
FROM emp  
WHERE sal >= 1100  
OR job = 'CLERK';

SELECT ename, job  
FROM emp  
WHERE job NOT IN ('CLERK', 'MANAGER', 'ANALYST');

SELECT ename, job, sal FROM emp  
WHERE job = 'SALESMAN' 
OR job = 'PRESIDENT'  
AND sal > 1500;

SELECT ename, job, sal FROM emp  
WHERE (job = 'SALESMAN'  
OR job = 'PRESIDENT')  
AND sal > 1500;

SELECT ENAME, JOB, DEPTNO, HIREDATE  
FROM EMP  
ORDER BY HIREDATE;

SELECT ENAME, JOB, DEPTNO, HIREDATE  
FROM EMP  
ORDER BY HIREDATE DESC;

SELECT EMPNO, ENAME, SAL*12 ANNSAL FROM EMP  
ORDER BY ANNSAL.  
SELECT ENAME, DEPTNO, SAL  
FROM EMP  
ORDER BY DEPTNO, SAL DESC;

SELECT EMPNO, ENAME, SAL*12 ANNSAL FROM EMP  
ORDER BY ANNSAL. ;

SELECT EMPNO, ENAME, SAL*12 ANNSAL FROM EMP  
ORDER BY ANNSAL;

SELECT ENAME, DEPTNO, SAL  
FROM EMP  
ORDER BY DEPTNO, SAL DESC;

SELECT UPPER(ENAME) "EMP NAME", JOB  
FROM EMP  
WHERE TO_CHAR(HIREDATE, 'YYYY') = 1987  
ORDER BY ENAME;

SELECT EMPNO, ENAME, JOB, 12*SAL + NVL(COMM, 0)   
ANNUAL_SALARY  
FROM EMP  
WHERE JOB = 'MANAGER' OR JOB = 'CLERK'  
AND SAL BETWEEN 3000 AND 5500  
ORDER BY ANNUAL_SALARY DESC;

SELECT  *  
FROM  EMP  
WHERE (SAL BETWEEN 3500 AND 5000) AND HIREDATE >  
TO_DATE('31-JUL-1981', 'DD-MON-YYYY');

SELECT  *  FROM EMP  
WHERE (JOB = 'CLERK' OR JOB = 'ANALYST') AND HIREDATE BETWEEN TO_DATE('23-JUL-1981', 'DD-MON-YYYY') AND  
TO_DATE('14-MAY-1982', 'DD-MON-YYYY');

SELECT EMPNO, ENAME, JOB  
FROM EMP;

SELECT EMPNO, ENAME, SAL  
FROM EMP  
WHERE COMM IS NULL;

SELECT E.ENAME, E.JOB, D.DNAME  
FROM EMP E, DEPT D  
WHERE E.DEPTNO = D.DEPTNO;

SELECT * FROM EMP WHERE JOB <> 'MANAGER';

SELECT EMPNO, ENAME, SAL, MGR FROM EMP WHERE MGR IN (7902, 7566, 7788);

SELECT ENAME FROM EMP WHERE ENAME LIKE 'S%';

SELECT ENAME FROM EMP WHERE ENAME LIKE '_A%';

SELECT empno, ename, job, sal  
FROM emp  
WHERE sal >= 1100  
AND job = 'CLERK';

SELECT empno, ename, job, sal  
FROM emp  
WHERE sal >= 1100  
OR job = 'CLERK';

SELECT ename, job  
FROM emp  
WHERE job NOT IN ('CLERK', 'MANAGER', 'ANALYST');

SELECT ename, job, sal FROM emp  
WHERE job = 'SALESMAN' 
OR job = 'PRESIDENT'  
AND sal > 1500;

SELECT ename, job, sal FROM emp  
WHERE (job = 'SALESMAN'  
OR job = 'PRESIDENT')  
AND sal > 1500;

SELECT ENAME, JOB, DEPTNO, HIREDATE  
FROM EMP  
ORDER BY HIREDATE;

SELECT ENAME, JOB, DEPTNO, HIREDATE  
FROM EMP  
ORDER BY HIREDATE DESC;

SELECT EMPNO, ENAME, SAL*12 ANNSAL FROM EMP  
ORDER BY ANNSAL 
SELECT ENAME, DEPTNO, SAL  
FROM EMP  
ORDER BY DEPTNO, SAL DESC;

SELECT UPPER(ENAME) "EMP NAME", JOB  
FROM EMP  
WHERE TO_CHAR(HIREDATE, 'YYYY') = 1987  
ORDER BY ENAME;

SELECT EMPNO, ENAME, JOB, 12*SAL + NVL(COMM, 0)   
ANNUAL_SALARY  
FROM EMP  
WHERE JOB = 'MANAGER' OR JOB = 'CLERK'  
AND SAL BETWEEN 3000 AND 5500  
ORDER BY ANNUAL_SALARY DESC;

SELECT ENAME AS EMPLOYEE_NAME, DEPTNO AS DEPARTMENT_NUMBER FROM EMP WHERE EMPNO=7566;

SELECT ENAME AS EMPLOYEE_NAME,DEPTNO AS DEPARTMENT_NUMBER FROM EMP WHERE DEPTNO IN (10,30) ORDER BY ENAME;

Select ENAME as Employee_Name, DEPTNO as Department_Number, HIREDATE as HIRE_DATE from EMP where TO_CHAR(HIREDATE,'YYYY')='1982';

Select ENAME as EMPLOYEE_NAME from EMP where (ENAME like '%ll%') and (DEPTNO=30) or (MGR=7782);

Select ENAME as Employee_Name,HIREDATE as HIRE_DATE, JOB, DEPTNO as Department_Number from EMP where JOB= 'CLERK' and TO_CHAR(HIREDATE,'YYYY')<'1983' and DEPTNO in (10,20);

Select ENAME as Employee_Name,SAL as SALARY from EMP where SAl  not Between 1500 and 2850;

Select ENAME as Employee_Name,SAL as SALARY,COMM as COMMISSION from EMP where COMM > (Sal+(Sal*0.1));

SELECT ENAME AS EMPLOYEE_NAME,DEPTNO AS DEPARTMENT_NUMBER FROM EMP WHERE DEPTNO IN (10,30) ORDER BY ENAME;

elect ENAME as Employee_Name, DEPTNO as Department_Number, HIREDATE as HIRE_DATE from EMP where TO_CHAR(HIREDATE,'YYYY')='1982'; 


Select ENAME as Employee_Name, DEPTNO as Department_Number, HIREDATE as HIRE_DATE from EMP where TO_CHAR(HIREDATE,'YYYY')='1982';

Select ENAME as EMPLOYEE_NAME from EMP where (ENAME like '%ll%') and (DEPTNO=30) or (MGR=7782);

Select ENAME as Employee_Name,HIREDATE as HIRE_DATE, JOB, DEPTNO as Department_Number from EMP where JOB= 'CLERK' and TO_CHAR(HIREDATE,'YYYY')<'1983' and DEPTNO in (10,20);

Select ENAME as Employee_Name,SAL as SALARY from EMP where SAl  not Between 1500 and 2850;

Select ENAME as Employee_Name,SAL as SALARY,COMM as COMMISSION from EMP where COMM > (Sal+(Sal*0.1));

