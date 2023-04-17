--Data Analysis 
--1. 
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex, 
	s.salary
FROM employees e
	JOIN salaries s ON e.emp_no = s.emp_no;
	
--2. 
SELECT 
	first_name, 
	last_name,
	hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3.
SELECT 
	d.dept_no,
	dt.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
FROM dept_manager d 
JOIN departments dt ON d.dept_no = dt.dept_no
JOIN employees e ON e.emp_no = d.emp_no;
	
--4.
SELECT 
	d.dept_no,
	e.emp_no,
	e.last_name,
	e.first_name,
	dt.dept_name
FROM departments dt 
JOIN dept_emp d ON d.dept_no = dt.dept_no
JOIN employees e ON e.emp_no = d.emp_no;

--5. 
SELECT 
	first_name,
	last_name,
	sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. 
SELECT 
	d.dept_name,
	de.emp_no,
	e.last_name,
	e.first_name
FROM departments d
JOIN dept_emp de ON d.dept_no = de.dept_no
JOIN employees e ON e.emp_no = de.emp_no
WHERE dept_name = 'Sales';

--7. 
SELECT 
	de.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM departments d
JOIN dept_emp de ON d.dept_no = de.dept_no
JOIN employees e ON e.emp_no = de.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--8.
SELECT 
	last_name,
	COUNT(last_name) AS last_name_frequency 
FROM employees 
GROUP BY
	last_name 
ORDER BY
	last_name_frequency DESC;