-- 1.List only those employees who have degree (Employee_ID, Employee_Name).
-- 2.List all employee names with employee experience data (Employee_ID, Employee_Name, Employee_Experience).
-- 3.List only those employees who do not belongs to any department, 
-- where as these employees must have employee degree (Employee_ID, Dept_ID, Emp_Degree_ID).
SELECT Employee_ID,Employee_Name FROM 
EMPLOYEE NATURAL JOIN EMP_DEGREE;

SELECT Employee_ID, Employee_Name, Employee_Experience
FROM EMPLOYEE NATURAL JOIN EMP_EXPERIENCE;

SELECT EMPLOYEE.Employee_ID, DEPARTMENT.Dept_ID
FROM EMPLOYEE LEFT JOIN DEPARTMENT ON
EMPLOYEE.Dept_ID=DEPARTMENT.Dept_ID
INNER JOIN EMP_DEGREE ON
EMPLOYEE.EMPLOYEE_ID=EMP_DEGREE.EMPLOYEE_ID
WHERE DEPARTMENT.DEPT_ID IS NULL ;

-- 4.List all those employeeswho have more 
-- than 2 Employee_experiences 
-- (Employee_ID,Employee_Name,Number of Experiences).
SELECT EMX.Employee_ID, E.Employee_Name, COUNT(*) as Number_of_Experiences
FROM EMPLOYEE E, EMP_EXPERIENCE EMX
WHERE E.Employee_ID = EMX.Employee_ID
GROUP BY EMX.Employee_ID, E.Employee_Name
HAVING COUNT(*) > 2;

-- 5.List all those employeeswho have lessthan or equal 
-- to 2 Employee_experienceand works in 
-- Financedepartment 
-- (Employee_ID, Employee_Name, Number of Experiences, Dept_Name).
SELECT EMX.Employee_ID, E.Employee_Name, COUNT(*) as Number_of_Experiences, D.Dept_Name
FROM EMPLOYEE E, EMP_EXPERIENCE EMX, DEPARTMENT D
WHERE E.Employee_ID = EMX.Employee_ID and E.Dept_ID = D.Dept_ID and D.Dept_Name = 'Finance'
GROUP BY EMX.Employee_ID, E.Employee_Name, D.Dept_Name
HAVING COUNT(*) >= 2;

-- 6.List the employee whose name startswith A(Employee_ID, Employee_Name).
SELECT Employee_ID, Employee_Name FROM EMPLOYEE WHERE EMPLOYEE_NAME LIKE 'A%';

-- 7.List all employee names 
-- who have Undergraduate degree with 1 Employee_experience
-- (Employee_ID, Employee_Name, Employee_Experience,Employee_Degree).
SELECT E.Employee_ID, E.Employee_Name, COUNT(EMX.Employee_Experience), ED.Employee_Degree
FROM EMPLOYEE E, EMP_DEGREE ED, EMP_EXPERIENCE EMX
WHERE E.Employee_ID = ED.Employee_ID and E.Employee_ID = EMX.Employee_ID and ED.Employee_Degree = 'Undergraduate'
GROUP BY E.Employee_ID, E.Employee_Name, ED.Employee_Degree
HAVING COUNT(EMX.Employee_Experience) = 1; 

-- 8.List all employee names who have Undergraduate degree with 1 Employee_experience
-- (Employee_ID, Employee_Name, Dept_Name, Employee_Experience,Employee_Degree).
SELECT E.Employee_ID, E.Employee_Name, COUNT(EMX.Employee_Experience), ED.Employee_Degree
FROM EMPLOYEE E, EMP_DEGREE ED, EMP_EXPERIENCE EMX
WHERE E.Employee_ID = ED.Employee_ID and E.Employee_ID = EMX.Employee_ID and ED.Employee_Degree = 'Undergraduate'
GROUP BY E.Employee_ID, E.Employee_Name, ED.Employee_Degree
HAVING COUNT(EMX.Employee_Experience) = 1;
