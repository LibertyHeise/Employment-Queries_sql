-- EmployeeSQL table creations

CREATE TABLE departments (
dept_no VARCHAR (10),
dept_name (VARCHAR) (30),
PRIMARY KEY(dept_no)
);

CREATE TABLE dept_emp (
emp_no VARCHAR(10), 
dept_no VARCHAR(10),
FOREIGN KEY(emp_no) REFERENCES employees (emp_no), 
FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (emp_no, dept_no)
);
	
CREATE TABLE dept_manager (
dept_no VARCHAR (10), 
emp_no VARCHAR(10),
FOREIGN KEY(emp_no) REFERENCES employees (emp_no), 
FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (emp_no, dept_no)
);	
	
CREATE TABLE employees (
emp_no INT, 
emp_title_id VARCHAR(30), 
birth_date DATE, 
first_name VARCHAR(30), 
last_name VARCHAR(30), 
sex VARCHAR(5), 
hire_date DATE
FOREIGN KEY()
PRIMARY KEY (emp_no)
);	

CREATE TABLE salaries (
emp_no INT, 
salary INT,
PRIMARY KEY (emp_no)
);	
	
CREATE TABLE titles (
title_id VARCHAR (10), 
title VARCHAR(30),
PRIMARY KEY (title_id)
);		