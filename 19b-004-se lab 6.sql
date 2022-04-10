CREATE TABLE EMPLOYEE19B004(
Empno NUMBER NOT NULL CONSTRAINT EMPLOYEE19B004_Emplo_PK PRIMARY KEY,
EName VARCHAR2(20)NOT NULL,
Designation VARCHAR2(20)NOT NULL,
qualification VARCHAR2(20),
Joindate DATE DEFAULT SYSDATE

);

CREATE TABLE GRADE19B004 (
Designation VARCHAR2(20)NOT NULL,
Grade NUMBER(2) NOT NULL CONSTRAINT check_Grade CHECK (Grade Between 1 and 10),
Totalposts  NUMBER NOT NULL,
PostsAvailable NUMBER, 
CONSTRAINT PostsAvailable_ck CHECk(Totalposts <= PostsAvailable)
);

CREATE TABLE PROJECT19B004 (
PID NUMBER(4) NOT NULL,
Title VARCHAR2(20) NOT NULL,
Client VARCHAR2(20) NOT NULL,
Durations VARCHAR2(1) NOT NULL,
Status VARCHAR2(20), CONSTRAINT ck_Status CHECK (Status IN ('New','In Progress','Complete'))
);


CREATE TABLE TRAINING19B004 (
Tcode VARCHAR2(4) NOT NULL, CONSTRAINT  TRAINING19B004_Tcode_PK  PRIMARY KEY, 
Title VARCHAR2(20) NOT NULL,
StartDate DATE,
EndDate DATE
);


CREATE TABLE EMP_PROJECT19B004(
Empno NUMBER(4)NOT NULL, CONSTRAINT EMP_PROJECT19B004_Empno_FK FOREIGN KEY(Empno) REFERENCES EMPLOYEE19B004(Empno), 
PID NUMBER (4)NOT NULL,
PERFORMANCES VARCHAR2(4) NOT NULL, CONSTRAINT ck_PERFORMANCE CHECK (PERFORMANCES IN ('Excellent','Good','Fair','Bad','Poor'))
);


CREATE TABLE EMP_TRAINING19B004 (
Empno NUMBER(4)NOT NULL, 
CONSTRAINT EMP_TRAINING19B004_Empno_FK FOREIGN KEY(Empno) REFERENCES EMPLOYEE19B004(Empno),
Tcode VARCHAR2(4)NOT NULL,
Attendance NUMBER(3)
);


select * from empproject

ALTER TABLE EMPLOYEE19B004
ADD (Gender VARCHAR2(8) NOT NULL, CONSTRAINT check_Gender CHECK (Gender = 'Male' OR Gender = 'Female')
);

ALTER TABLE TRAINING19B004
ADD (Instructor_Name VARCHAR2(20) NOT NULL
);

ALTER TABLE GRADE19B004
ADD (Salary Number(10) NOT NULL
);


INSERT INTO dept (deptno, dname, loc) 
VALUES (50, 'DEVELOPMENT', 'DETROIT'); 

INSERT INTO dept (deptno, dname) 
VALUES (60, 'MIS');
 
INSERT INTO dept 
VALUES (70, 'FINANCE', NULL); 

INSERT INTO emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (7196, 'GREEN',  'SALESMAN', 7782, SYSDATE, 2000, NULL, 10); 

INSERT INTO emp (empno,ename,job,mgr,hiredate,sal,comm,deptno)
VALUES (2296, 'AROMANO', 'SALESMAN', 7782, TO_DATE('FEB 3, 97','MON DD, YY'), 1300, NULL, 10); 
INSERT INTO dept (deptno, dname, loc) 
VALUES (&department_id, 'department_name', 'location'); 

INSERT INTO EMP
SELECT * FROM EMP 
WHERE DEPTNO = 10; 


UPDATE  emp 
SET  deptno = 20 
WHERE empno = 7782; 

UPDATE  emp 
SET  deptno = 20;

UPDATE emp 
SET (job, deptno) = (SELECT job, deptno FROM emp WHERE  empno = 7499) 
WHERE empno = 7698;

DELETE FROM dept
WHERE  dname = 'DEVELOPMENT'; 

DELETE FROM employee 
WHERE hiredate > TO_DATE('01.01.97', 'DD.MM.YY');

DELETE from employee WHERE deptno = (SELECT  deptno FROM  dept WHERE  dname = 'SALES');
 
DELETE FROM employee 
WHERE DEPTNO = 30;

INSERT INTO dept (deptno, dname, loc) 
VALUES (50, 'ADVERTISING', 'ATLANTA');

UPDATE EMP 
SET DEPTNO = 50 
WHERE EMPNO = 7566;
COMMIT;

select * from emp;


insert into emp19b004(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (7123,'Ralph','Designer',7566,'21-APR-85',2300,null,50);

CREATE TABLE emp19b004
AS (SELECT * FROM emp);
 

CREATE TABLE dept19b004
AS (SELECT * FROM dept);

select * from dept19b004

insert into emp19b004(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (7890,'George','Clerk',7566,'03-MAY-85',1235,null,50);

insert into emp19b004(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values (7629,'bOB','Salesman',7698,'06-MAR-86',1800,1000,30);

UPDATE EMP19B004
SET SAL=SAL+250 WHERE JOB='CLERK' AND SAL>900;


UPDATE EMP19B004
SET DEPTNO=20,SAL=SAL+(SAL*0.15) WHERE (EMPNO=7890);

SELECT * FROM EMP19B004 WHERE EMPNO=7890
 
UPDATE EMP19B004
SET SAL=SAL+(SELECT SAL FROM EMP19B004 WHERE EMPNO=7499)*0.10
WHERE EMPNO=7369;

SELECT * FROM EMP19B004 WHERE EMPNO=7369


UPDATE EMP19B004 SET MGR=(SELECT MGR FROM EMP19B004 WHERE EMPNO=7900) WHERE EMPNO=7876;
SELECT * FROM EMP19B004 WHERE EMPNO=7876

Remove all employees who were hired before 1981. 
DELETE FROM EMP19B004 WHERE TO_CHAR(HIREDATE,'YYYY')<'1981';

SELECT * FROM EMP19B004 WHERE TO_CHAR(HIREDATE,'YYYY')<'1981';