SELECT ENAME,DNAME,LOC FROM EMP E NATURAL JOIN DEPT D WHERE COMM!=0 AND DNAME='SALES' ;

SELECT WORKER.ENAME ,MANAGER.ENAME FROM EMP WORKER,EMP MANAGER WHERE WORKER.MGR=MANAGER.EMPNO(+);

SELECT ENAME FROM EMP WHERE MGR=7839;

SELECT ENAME, JOB,DEPT.DEPTNO,DEPT.DNAME FROM EMP JOIN DEPT ON DEPT.DEPTNO= EMP.DEPTNO WHERE LOC = 'DALLAS';

SELECT WORKER.ENAME AS EMPLOYEE,WORKER.EMPNO AS EMP#,MANAGER.MGR AS MANAGER#,MANAGER.ENAME AS MANAGER FROM EMP WORKER,EMP MANAGER WHERE WORKER.MGR=MANAGER.EMPNO;