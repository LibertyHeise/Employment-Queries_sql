# sql-challenge
Module 9

Description

For this challenge, we were asked to write the schema for 6 tables in PostGreSQL.  The schema needed to be written with the Primary, Foreign and Composite Keys identified in order to join the tables further down the line.

TABLES

Six tables were created and then run through the PostGreSQL and showed up under the database EmployeeSQL.  Tables then needed to have their csv data imported but those parent tables needed to first be imported and then the child tables could follow.  The parents tables were employees and departments.

JOINING

While determining the tables (parent and child) it was important to identify where the joins would be in order to provide the proper information when running the queries.  This was established through determining what information answered the query questions and then writing the schema.

QUERIES/DATA ANALYSIS

Through the query process I created the following schema to answer the query.


List the employee number, last name, first name, sex, and salary of each employee.
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


List the first name, last name, and hire date for the employees who were hired in 1986.
-- Data Analysis Q2: Query for hired in 1986
SELECT DISTINCT
last_name,
first_name, 
hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986';

List the manager of each department along with their department number, department name, employee number, last name, and first name.
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

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
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

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
-- Data Analysis Q5: Query for first, last, sex, Hercules, ln B
SELECT DISTINCT
employees.first_name, 
employees.last_name,
employees.sex
FROM employees 
WHERE first_name LIKE 'Hercules'and last_name LIKE 'B%';

List each employee in the Sales department, including their employee number, last name, and first name.
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

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
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

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
-- Data Analysis Q8: Query freq count/dec, last name (how many emp share the same ln)
SELECT last_name, COUNT ('last_name')
FROM employees
GROUP By last_name;

