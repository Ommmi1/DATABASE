

--------------Task 1
select empno,ename,sal from emp where sal>(select avg(sal) from emp ) order by sal desc;

--------------Task 2
select ename,sal from emp where mgr=(select empno from emp where ename='KING');

--------------Task 3
select deptno , ename, job from emp where deptno = (select deptno from dept where dname = 'SALES') 


--------------Task 4
select ename,hiredate,sal from emp where sal=(select sal from emp where ename='SCOTT')
and comm=(select comm from emp where ename='SCOTT');

--------------Task 5
select ename, deptno , job from emp where deptno = (select deptno from dept where loc = 'DALLAS')

--------------Task 6
select empno from job_history where job!='ANALYST' union  select empno from emp where job!='ANALYST';

--------------Task 7
select ename ,hiredate from emp where deptno=(select deptno from emp where ename='BLAKE') and  ename!='BLAKE';

--------------Task 8
select empno,ename,sal from emp where sal>(select avg(sal) from emp) and deptno in (select deptno from emp where ename like '%T%');
 