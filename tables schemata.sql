CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(30)
);

SELECT*
FROM titles 

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(10),
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(10),
	hire_date DATE
);

ALTER TABLE employees
ADD CONSTRAINT fk_emp_title_id
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id);

SELECT*
FROM employees

CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(30)
);

SELECT*
FROM departments 

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(10)
);

ALTER TABLE dept_emp
ADD CONSTRAINT pk_dept_emp
PRIMARY KEY (emp_no, dept_no);

SELECT*
FROM dept_emp

CREATE TABLE dept_manager (
	dept_no VARCHAR(10),
	emp_no INT
);

ALTER TABLE dept_manager
ADD CONSTRAINT pk_dept_manager
PRIMARY KEY (dept_no, emp_no)

SELECT*
FROM dept_manager 

CREATE TABLE salaries (
	emp_no INT, 
	salary INT
);

ALTER TABLE salaries 
ADD CONSTRAINT fk_emp_no
FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

SELECT* 
FROM salaries 
