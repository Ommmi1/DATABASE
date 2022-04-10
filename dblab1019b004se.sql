CREATE SEQUENCE dept19B004_deptno
INCREMENT BY 1 
START WITH 50; 


INSERT INTO dept19b004 (deptno, dname, loc) 
Values (Dept19b004_Deptno.Nextval, 'MANAGEMENT', 'NEW YORK');
select * from dept19b004;
SELECT dept19B004_deptno.CURRVAL 
FROM DUAL;

CREATE INDEX emp19B004_ename_idx 
ON emp(ename);

CREATE INDEX emp19B004_job5_idx 
On Emp(Substr(Job, 1, 5)); 
drop index emp19B004_ename_idx 
CREATE BITMAP INDEX IND_PROJ_STAT 
On Project (Status);
drop index ind_proj_stat
DROP TABLE EMP CASCADE CONSTRAINT;
DROP INDEX index; 
DROP INDEX emp_ename_idx; 

CREATE SYNONYM d_sum 
For Dept19b004_Sum_Vu; 
--drop synonym d_sum
CREATE PUBLIC SYNONYM DEPT19B004 
FOR SCOTT.DEPT;

SELECT INDEX_NAME, TABLE_NAME, TABLE_OWNER, UNIQUENESS 
FROM USER_INDEXES; 

--DROP public SYNONYM DEPT19b004; 