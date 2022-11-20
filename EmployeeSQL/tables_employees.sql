
-- EmployeeSQL table creations

CREATE TABLE departments (
dept_no VARCHAR (30),
dept_name (VARCHAR) (30)
);

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
	
