CREATE TABLE DEPARTMENT(
Dept_ID NUMBER(3) NOT NULL CONSTRAINT dept_id_pk PRIMARY KEY,
Dept_Name VARCHAR2(32) NOT NULL
);

INSERT INTO DEPARTMENT(Dept_ID,Dept_Name)
VALUES(1,'H R');
INSERT INTO DEPARTMENT(Dept_ID,Dept_Name)
VALUES(2,'Finance');
INSERT INTO DEPARTMENT(Dept_ID,Dept_Name)
VALUES(3,'Production');
INSERT INTO DEPARTMENT(Dept_ID,Dept_Name)
VALUES(4,'Vendor Management');
INSERT INTO DEPARTMENT(Dept_ID,Dept_Name)
VALUES(5,'Warehouse');
INSERT INTO DEPARTMENT(Dept_ID,Dept_Name)
VALUES(6,'I T');


CREATE TABLE EMPLOYEE(
Employee_ID NUMBER(3) NOT NULL CONSTRAINT employee_id_pk PRIMARY KEY,
Employee_Name VARCHAR2(32) NOT NULL,
Dept_ID NUMBER(3),
CONSTRAINT EMPLOYEES_Dept_ID_FK FOREIGN KEY (Dept_ID) REFERENCES DEPARTMENT (Dept_ID)
);


INSERT INTO EMPLOYEE(Employee_ID,Employee_Name,Dept_ID)
VALUES (1,'Robert',2);
INSERT INTO EMPLOYEE(Employee_ID,Employee_Name,Dept_ID)
VALUES (2,'Clerk',3);
INSERT INTO EMPLOYEE(Employee_ID,Employee_Name,Dept_ID)
VALUES (3,'James',4);
INSERT INTO EMPLOYEE(Employee_ID,Employee_Name,Dept_ID)
VALUES (4,'Alex',5);
INSERT INTO EMPLOYEE(Employee_ID,Employee_Name,Dept_ID)
VALUES (5,'Jordan',2);
INSERT INTO EMPLOYEE(Employee_ID,Employee_Name,Dept_ID)
VALUES (6,'Smith',4);
INSERT INTO EMPLOYEE(Employee_ID,Employee_Name,Dept_ID)
VALUES (7,'Peter',4);
INSERT INTO EMPLOYEE(Employee_ID,Employee_Name,Dept_ID)
VALUES (8,'Clare',NULL);
INSERT INTO EMPLOYEE(Employee_ID,Employee_Name,Dept_ID)
VALUES (9,'Kriss',NULL);
INSERT INTO EMPLOYEE(Employee_ID,Employee_Name,Dept_ID)
VALUES (10,'karen',NULL);

CREATE TABLE EMP_DEGREE(
Emp_Degree_ID NUMBER(3) NOT NULL CONSTRAINT employee_degree_id_pk PRIMARY KEY,
Employee_Degree VARCHAR2(32) NOT NULL,
Employee_ID NUMBER(3) NOT NULL,
CONSTRAINT EMP_DEGREE_Employee_ID_FK FOREIGN KEY (Employee_ID) REFERENCES EMPLOYEE(Employee_ID)
);

INSERT INTO EMP_DEGREE(Emp_Degree_ID,Employee_Degree,Employee_ID)
VALUES(1,'Undergraduate',1);
INSERT INTO EMP_DEGREE(Emp_Degree_ID,Employee_Degree,Employee_ID)
VALUES(2,'Graduate',2);
INSERT INTO EMP_DEGREE(Emp_Degree_ID,Employee_Degree,Employee_ID)
VALUES(3,'School',3);
INSERT INTO EMP_DEGREE(Emp_Degree_ID,Employee_Degree,Employee_ID)
VALUES(4,'School',4);
INSERT INTO EMP_DEGREE(Emp_Degree_ID,Employee_Degree,Employee_ID)
VALUES(5,'Short Course',5);
INSERT INTO EMP_DEGREE(Emp_Degree_ID,Employee_Degree,Employee_ID)
VALUES(6,'Undergraduate',6);


CREATE TABLE EMP_EXPERIENCE(
Emp_Exp_ID NUMBER(3) NOT NULL CONSTRAINT emp_experience_pk PRIMARY KEY,
Employee_Experience VARCHAR2(32) NOT NULL,
Employee_ID NUMBER(3),
CONSTRAINT EMP_EXPERIENCE_Employee_ID_FK FOREIGN KEY (Employee_ID) REFERENCES EMPLOYEE(Employee_ID)
);


INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(1,'Amold Clark',1);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(2,'Argos',1);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(3,'Azda',1);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(4,'Sains Burry',2);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(5,'Next',2);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(6,'Primark',2);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(7,'Sky',3);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(8,'Virgin Media',4);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(9,'Burton',4);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(10,'Eon',5);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(11,'Udle',8);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(12,'Boots',8);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(13,'Perfume Shop',NULL);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(14,'Phone 4 U',NULL);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(15,'Voda',NULL);
INSERT INTO EMP_EXPERIENCE(Emp_Exp_ID,Employee_Experience,Employee_ID)
VALUES(16,'O2',NULL);




