select * from employees

create procedure spgetemployees
as
BEGIN

SELECT emp_name, hire_date FROM employees
END

spgetemployees
EXEC spgetemployees
EXECUTE spgetemployees

------------------------------------------

---SP WITH PARAMETERS----

SELECT * FROM employees

ALTER TABLE [dbo].[employees]
ADD GENDER VARCHAR (100), DEPT_ID INT

UPDATE employees 
SET GENDER = 'M' , DEPT_ID = 10
WHERE emp_ID = 105

-----------------------------
CREATE PROC spgetemployees_BYGENDER_AND_DEPARTMENT
@GENDER VARCHAR (10),
@DEPT_ID INT
AS
BEGIN
SELECT EMP_NAME, GENDER, DEPT_ID FROM employees
WHERE GENDER = @GENDER AND DEPT_ID = @DEPT_ID
END

spgetemployees_BYGENDER_AND_DEPARTMENT
@GENDER = 'M',
@DEPT_ID = 30

-----------------------------------------
---QUERY TO GIVE AGGREGATE DATA BY THE COLUMN GENDER --------

SELECT GENDER, COUNT (*) AS TOTAL,
AVG (SALARY) AS AVG_SAL,
MAX (SALARY) AS MAX_SAL,
MIN (SALARY) AS MIN_SAL
FROM employees
GROUP BY GENDER

---------------------------------------------
--OVER CLAUSE---

SELECT EMP_NAME, SALARY, GENDER, 
COUNT(GENDER) OVER (PARTITION BY GENDER) AS GENDER_TOTAL,
AVG (SALARY) OVER (PARTITION BY GENDER) AS AVG_SAL,
MAX (SALARY) OVER (PARTITION BY GENDER) AS MAX_SAL,
MIN (SALARY) OVER (PARTITION BY GENDER) AS MIN_SAL
FROM employees

