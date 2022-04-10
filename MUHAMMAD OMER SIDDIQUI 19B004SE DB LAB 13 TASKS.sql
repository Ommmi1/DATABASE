CREATE TABLE PROJECT19b004 (
    PID NUMBER(5) NOT NULL CONSTRAINT PROJECT19b004_PK  PRIMARY KEY,
    TITLE VARCHAR2(10) NOT NULL,
    CLIENT VARCHAR2(10),
    DURATION VARCHAR2(9),
    STATUS VARCHAR2(10)
);

INSERT INTO PROJECT19B004(PID,TITLE,CLIENT,DURATION,STATUS)
VALUES(004,'DB','OMER','ONEDAY','INPROCESS');

CREATE OR REPLACE PROCEDURE P_PROJECT19b004
(
    P_ID IN PROJECT19b004.PID%TYPE,
    P_TITLE OUT PROJECT19b004.TITLE%TYPE,
    P_CLIENT OUT PROJECT19b004.CLIENT%TYPE,
    P_DURATION OUT PROJECT19b004.DURATION%TYPE,
    P_STATUS OUT PROJECT19b004.STATUS%TYPE
)
IS
BEGIN
SELECT TITLE,CLIENT,DURATION,STATUS INTO P_TITLE,P_CLIENT,P_DURATION,P_STATUS
FROM PROJECT19b004
WHERE PID=P_ID;
END;
/

VARIABLE P_TITLE VARCHAR2(15)
VARIABLE P_CLIENT VARCHAR2(15)
VARIABLE P_DURATION VARCHAR2(15)
VARIABLE P_STATUS VARCHAR2(15)
EXECUTE P_PROJECT19b004(004, :P_TITLE, :P_CLIENT, :P_DURATION, :P_STATUS)

PRINT P_TITLE
PRINT P_CLIENT
PRINT P_DURATION
PRINT P_STATUS
/













CREATE OR REPLACE PROCEDURE P419b004SEA
(
    V_EMPNO IN EMP19b004.EMPNO%TYPE,
    V_DESG IN EMP19b004.JOB%TYPE,
    V_DESIGNATION OUT EMP19b004.JOB%TYPE
)
IS 
BEGIN
UPDATE EMP19b004
SET JOB=V_DESG
WHERE EMPNO=V_EMPNO;
SELECT 'NEW GRADE:'||JOB INTO V_DESIGNATION FROM EMP19b004
WHERE EMPNO=V_EMPNO;
END P419b004SEA;
/


VARIABLE V_DESG VARCHAR2(20) 
EXECUTE
P419b004SEA(7369,'CLERK', :V_DESG);
PRINT V_DESG
SELECT * FROM EMP19B004;
SELECT ENAME || ' EARNS ' || SAL || ' MONTHLY ' || '  ' AS SALARY FROM EMP19b004;
/






CREATE OR REPLACE PROCEDURE T_TRAINING19b004 
(
    V_ID IN PROJECT19b004.PID%TYPE,
    V_DURATION OUT PROJECT19b004.DURATION%TYPE
)
IS 
BEGIN
SELECT DURATION 
INTO V_DURATION
FROM PROJECT19b004
WHERE PID=V_ID;
END;
/

VARIABLE V_DURATION VARCHAR2(15)
EXECUTE T_TRAINING19b004(004,:V_DURATION)
PRINT V_DURATION
/


