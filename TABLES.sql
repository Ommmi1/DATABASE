CREATE TABLE DEPARTMENT( 
Dept_no VARCHAR2(4) NOT NULL CONSTRAINT DEPARTMENT_Dept_no_PK PRIMARY KEY, 
Dept_name VARCHAR2(20) NOT NULL, 
Dept_location VARCHAR2(20) NOT NULL 
 
);





CREATE TABLE EMPLOYEES_SHIFT ( 
Shift_id VARCHAR2(4) NOT NULL CONSTRAINT EMPLOYEES_SHIFT_Shift_id_PK PRIMARY KEY, 
Shift_name VARCHAR2(10) NOT NULL, 
CONSTRAINT ck_Shift_id CHECK (Shift_id IN ('S1','S2','S3')) 
 
);





CREATE TABLE EMPLOYEES( 
Emp_no NUMBER(4) NOT NULL CONSTRAINT EMPLOYEES_Emp_no_PK PRIMARY KEY, 
Emp_name VARCHAR2(20) NOT NULL, 
Emp_phone NUMBER(15), 
Emp_salary NUMBER(8) NOT NULL, 
Emp_Comm NUMBER(8), 
Emp_age NUMBER(4)NOT NULL, 
Hiredate VARCHAR2(10), 
Emp_dept_no VARCHAR2(4) NOT NULL, 
Emp_shift_id VARCHAR2(4) NOT NULL, 
CONSTRAINT EMPLOYEES_Emp_dept_no_FK FOREIGN KEY(Emp_dept_no) REFERENCES DEPARTMENT(dept_no), 
CONSTRAINT EMPLOYEES_Emp_shift_id_FK FOREIGN KEY(Emp_shift_id) REFERENCES EMPLOYEES_SHIFT(Shift_id) 
 
);




CREATE TABLE EMPLOYEES_ATTENDANCE( 
Emp_no NUMBER(4) NOT NULL, 
Working_date VARCHAR2(15), 
Attendance_status VARCHAR2(10), 
CONSTRAINT EMPLOYEES_ATTENDANCE_Emp_no_FK FOREIGN KEY (Emp_no) REFERENCES EMPLOYEES (Emp_no),  
CONSTRAINT ck_Attendance_status CHECk (Attendance_status IN ('PRESENT','ABSENT','LEAVE',NULL))
);

SELECT * FROM DEPARTMENT;
SELECT * FROM EMPLOYEES_SHIFT;
SELECT * FROM EMPLOYEES;