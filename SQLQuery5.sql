CREATE TABLE AGENT_1
(
AGENTS VARCHAR(100),
CITY VARCHAR(50),
OCCUPATION VARCHAR (50),
SALARY MONEY
)

CREATE TABLE AGENT_2
(
AGENT_NAME VARCHAR (100),
AGENT_CITY VARCHAR (50),
OCCUPATION VARCHAR (50),
SALARY MONEY
)

SELECT * FROM AGENT_1

SELECT * FROM AGENT_2


INSERT INTO AGENT_1 VALUES ('PRABHA', 'BANGALORE', 'BA', 10000),
                           ('PAPI', 'DELHI', 'CA', 5000),
						   ('ANNU', 'PUNE', 'BM', 6000),
						   ('BINDU', 'CHENNAI', 'SE', 7000)


INSERT INTO AGENT_2 VALUES ('PRABHA', 'BANGALORE', 'BA', 10000),
                           ('SID', 'US', 'PS', 2000),
						   ('RASH', 'UK', 'SD', 6000),
						   ('BINDU', 'CHENNAI', 'SE', 7000)

SELECT * FROM AGENT_1
EXCEPT
SELECT * FROM AGENT_2

-----------------------------------------------------------------------------
-------VIEW

SELECT * FROM employees

CREATE VIEW EMP_VIEW
AS
SELECT * FROM employees
-------------------------------
SELECT * FROM employees
SELECT * FROM EMP_VIEW

----------------

CREATE VIEW EMP_DET
AS
SELECT emp_name, emp_ID FROM employees 

SELECT * FROM EMP_DET
-----------------------------------

----TESTING

INSERT INTO EMP_VIEW VALUES (105, 'ANNU', ' ' , 35000, 'MUMBAI')

SELECT * FROM EMP_VIEW
--------------------------------
UPDATE EMP_VIEW 
SET
CITY = 'HYDERABAD' WHERE emp_ID = 102

SELECT * FROM EMP_VIEW





