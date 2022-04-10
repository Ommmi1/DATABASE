CREATE TABLE dept (deptno  NUMBER(2), dname   VARCHAR2(14), 
loc VARCHAR2(13)); 

CREATE TABLE  dept30 
AS SELECT  empno, ename, sal * 12 ANNSAL, hiredate 
FROM  emp 
WHERE  deptno = 30; 

ALTER TABLE dept30 

ADD (job  VARCHAR2(9)); 

ALTER TABLE dept30 
MODIFY 	(ename  VARCHAR2(15)); 

DROP TABLE DEPT30

CREATE TABLE DEPT30 ( 
	DEPTNO 	NUMBER(2) constraint DEPT_DEPTNO_PK PRIMARY KEY, 
DNAME 	VARCHAR2(14), LOC 	 	VARCHAR2(13), 
	CONSTRAINT 	DEPT_DNAME_UK  	UNIQUE(DNAME)); 
CREATE TABLE EMP ( 
	EMPNO 	NUMBER(4) CONSTRAINT  EMP_EMPNO_PK  PRIMARY KEY, 
	ENAME 	VARCHAR2(10) NOT NULL, 
	JOB 	 	VARCHAR2(9), 
	MGR  	NUMBER(4), 
	HIREDATE   DATE DEFAULT 	SYSDATE, 
SAL  NUMBER(7, 2), COMM NUMBER(7, 2), 
	DEPTNO 	NUMBER(7, 2) 	NOT NULL, 
	CONSTRAINT  	EMP_DEPTNO_CK CHECK (DEPTNO BETWEEN 1 AND 50), 
CONSTRAINT 	EMP_DEPTNO_FK FOREIGN KEY (DEPTNO)  REFERENCES  	DEPT(DEPTNO)); 
create table employee1 (
    EMPNO number not null constraint employee1_pk primary key,
    NAME varchar2(5) not null,
    DESIGNATION varchar2(20) not null,
    QUALIFICATION varchar2(15),
    JOINDATE date
);

create table GRADE1 (
    DESIGNATION varchar2(20) not null,
    GRADE number not null,
    TOTALPOSTS number not null,
    POSTSAVAILABLE number not null
);

create table PROJECT1 (
    PID number not null constraint project1_pk primary key,
    TITLE varchar2(10) not null,
    CLIENT varchar2(10),
    DURATION varchar2(9),
    STATUS varchar2(10)
);

create table TRAINING1 (
    TCODE varchar2(4) not null constraint training1_pk primary key,
    TITLE varchar2(10) not null,
    STARTDATE date not null,
    ENDDATE date not null
);

create table EMP_TRAINING1 (
    EMPNO number not null,
    TCODE varchar2(4) not null,
    ATTENDENCE number
);

create table EMP_PROJ1 (
    EMPNO number not null,
    PID number not null,
    PERFORMANCES varchar2(10)
);


ALTER TABLE “EMPLOYEE1” ADD CONSTRAINT 
my_constraint CHECK (GENDER = 'Male' OR GENDER = 'Female')

alter table "TRAINING1" add Instructor_name VARCHAR2(10);

alter table "GRADE1" add Salary number(10,0);