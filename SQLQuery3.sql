SELECT * FROM employees
SELECT * FROM DEPARTMENT

-------INSERT-------
INSERT INTO employees VALUES (103, 'NUTHU', '2022-09-05', 25000, 'KOLKATA'),
(104, 'THARUN', '2021-06-17', 35780, 'NOIDA')

INSERT INTO DEPARTMENT VALUES (001, 'CP', 'A1', 101),
(002, 'TS', 'A3', 102),
(003, 'FS', 'A2', 103)

----------WHERE---------

INSERT INTO DEPARTMENT VALUES (003, 'LP', 'A3',103)

SELECT * FROM employees WHERE emp_ID = 104 
SELECT * FROM employees WHERE city = 'KOLKATA'
SELECT * FROM employees WHERE emp_ID <> 101
SELECT * FROM employees WHERE salary >= 45000

-----------------------------------
------------BETWEEN, NOT BETWEEN------

SELECT * FROM employees WHERE salary BETWEEN 4000 AND 25000
SELECT * FROM employees WHERE salary NOT BETWEEN 4000 AND 25000

---------LIKE---------
SELECT * FROM employees WHERE city LIKE '__N%'
SELECT * FROM employees WHERE city LIKE 'P%'
SELECT * FROM employees WHERE city LIKE '__N%'
SELECT * FROM employees WHERE city LIKE '__I%'
SELECT * FROM employees WHERE city LIKE 'B%' AND city LIKE '%E'
SELECT * FROM employees WHERE city LIKE '%E' OR city LIKE 'N%'

----------JOIN--------
CREATE TABLE STUDENTS
(
STD_ID INT,
STD_NAME VARCHAR(40),
STD_CITY VARCHAR(50),
STD_EMAIL VARCHAR(40),
COURSE_ID INT,
)

CREATE TABLE COURSE
(
COURSE_ID INT,
COURSE_NAME VARCHAR(40),
COURSE_FEE DECIMAL (7,2),
)

SELECT * FROM STUDENTS
SELECT * FROM COURSE




