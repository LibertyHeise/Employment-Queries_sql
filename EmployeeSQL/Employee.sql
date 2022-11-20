
-- EmployeeSQL table creations

CREATE TABLE dept_emp (
  emp_no VARCHAR (10), 
	dept_no VARCHAR(10)
	);
	
CREATE TABLE dept_manager (
  dept_no VARCHAR (10), 
	emp_no VARCHAR(10)
	);	
	
CREATE TABLE employees (
  emp_no VARCHAR(10), 
	emp_title_id VARCHAR(30), 
	birth_date VARCHAR(10), 
	first_name VARCHAR(30), 
	last_name VARCHAR(30), 
	sex VARCHAR(10), 
	hire_date VARCHAR(10)
	);	

CREATE TABLE salaries (
  emp_no VARCHAR(10), 
	salary INT
	);	
	
CREATE TABLE titles (
  title_id VARCHAR (10), 
	title VARCHAR(30)
	);	
	
	-- Query all fields from the table
SELECT *
FROM employees;

-- Data Analysis Q1: Join employees and salary
SELECT DISTINCT
employees.emp_no, 
  employees.last_name, 
  employees.first_name, 
  employees.sex,
  salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

-- Data Analysis Q2: Query for hired in 1986
SELECT DISTINCT
last_name,first_name, hire_date
FROM employees
WHERE hire_date = '1986'
;

-- Data Analysis Q3: Query for manager of dept, dept #, dept n, emp #, last, first
SELECT DISTINCT
employees.emp_title_id,
departments.dept_no,
departments.dept_name,
employees.emp_no,
employees.last_name, 
employees.first_name
FROM departments
INNER JOIN dept_emp ON
departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no;

-- Data Analysis Q3: Query for manager of dept, dept #, dept n, emp #, last, first
SELECT DISTINCT
departments.dept_no,
employees.emp_no,
employees.last_name, 
employees.first_name,
departments.dept_name
FROM departments
INNER JOIN dept_emp ON
departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no;

-- Data Analysis Q4: Query for dept #, emp #, last, first, dept name
SELECT DISTINCT
departments.dept_no,
employees.emp_no,
employees.last_name, 
employees.first_name,
departments.dept_name
FROM departments
INNER JOIN dept_emp ON
departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no;

select *
FROM titles

-- Data Analysis Q5: Query for first, last, sex, Hercules, ln B
SELECT DISTINCT
employees.first_name, 
employees.last_name,
employees.sex
FROM employees 
WHERE first_name LIKE 'Hercules'and last_name LIKE 'B%';

-- Data Analysis Q6: Query for Sales, employee #, last, first
SELECT DISTINCT
departments.dept_name,
dept_emp.emp_no,
employees.first_name, 
employees.last_name
FROM departments
INNER JOIN dept_emp ON
departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales';

-- Data Analysis Q7: Query for Sales/Development, employee #, last, first, dept name
SELECT DISTINCT
dept_emp.emp_no,
employees.last_name,
employees.first_name, 
departments.dept_name
FROM departments
INNER JOIN dept_emp ON
departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
WHERE dept_name IN ('Sales','Development');

-- Data Analysis Q8: Query freq count/dec, last name (how many emp share the same ln)
SELECT last_name, COUNT ('last_name')
FROM employees
GROUP By last_name;




