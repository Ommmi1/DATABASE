SELECT * FROM EMPLOYEES;

CREATE OR REPLACE VIEW VU19B004SE AS
SELECT JOB AS DESIGNATION ,COUNT(EMPNO) AS NUMBEROFEMPLOYEES
FROM EMP group by job;

SELECT * FROM vu19b004se;
SELECT * FROM emP;

SELECT * FROM empprojects19b;

create table empproject19b004(
    empno NUMBER(4) not null,
    pid NUMBER(2) not null, 
    performance varchar2(10)
);
INSERT INTO  empproject19b004(EMPNO,PID,performance)
VALUES (7782,31,'EXELLENT');
select * from project19b004;

INSERT INTO project19b004 (client,duration,pid,title,status)
VALUES ('OMER','5',812,'ANALYST','COMPLETE');

INSERT INTO project19b004 (client,duration,pid,title,status)
VALUES ('TAHA','6',813,'ENGINEER','INPROGRESS');

INSERT INTO project19b004 (client,duration,pid,title,status)
VALUES ('ADNAN','6',815,'PEON','NEW');

create table project19b004(
    PID NUMBER NOT NULL,
    TITLE VARCHAR2(10) NOT NULL,
    CLIENT VARCHAR2(10) ,
    DURATION VARCHAR2(9),
    STATUS VARCHAR2(10)
);