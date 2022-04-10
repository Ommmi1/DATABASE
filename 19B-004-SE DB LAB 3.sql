SELECT SYSDATE AS CURRENT_DATE FROM DUAL;

SELECT EMPNO,ENAME,SAL, SAL+(SAL*15/100) "NEW-SALARY", (SAL+(SAL*15/100))- SAL "INCREMENT" FROM EMP;

SELECT ENAME , ROUND(MONTHS_BETWEEN(SYSDATE,HIREDATE),0) "MONTHS_WORKED" FROM EMP ORDER BY 2;

SELECT ENAME||' EARNS '||SAL  FROM EMP; 

SELECT INITCAP(ENAME) AS NAME_OF_EMP, LENGTH(ENAME) AS LENGTH_OF_NAME FROM EMP WHERE ENAME LIKE 'J%' OR ENAME LIKE 'A%' OR ENAME LIKE 'M%' ORDER BY ENAME;

SELECT ENAME, HIREDATE, TO_CHAR((NEXT_DAY(HIREDATE,'MONDAY')), 'FMDAY,"THE "DDSPTH "OF" MONTH,YYYY') AS DAY_DATE_YEAR FROM EMP;

SELECT  D.DEPTNO, D.DNAME "JOB" ,COUNT(E.EMPNO) "NUM_EMP"
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO 
GROUP BY D.DEPTNO, D.DNAME;

SELECT D.DNAME "DNAME",D.LOC "LOCATION",COUNT(E.DEPTNO) "NUMBER OFPEOPLE",ROUND(AVG(E.SAL),2) "SALARY" FROM DEPT D, 
EMP E WHERE D.DEPTNO = E.DEPTNO GROUP BY D.DNAME, D.LOC, E.DEPTNO;

SELECT ENAME,DEPTNO,JOB
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO FROM DEPT WHERE LOC='DALLAS');

SELECT MAX(SAL) - MIN(SAL) "DIFFERENCE" FROM EMP;

