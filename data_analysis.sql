-- List the employee number, last name, first name, sex, and salary of each employee

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s
ON e.emp_no = s.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT d.dept_no, dp.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees as e
JOIN dept_manager as d
ON d.emp_no = e.emp_no
JOIN departments as dp
ON dp.dept_no = d.dept_no

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT de.dept_no, dp.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as dp
ON dp.dept_no = de.dept_no

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT e.first_name, e.last_name, e.sex
FROM employees as e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- List each employee in the Sales department, including their employee number, last name, and first name 
SELECT dp.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees as e
JOIN dept_emp
ON e.emp_no = dept_emp.emp_no
JOIN departments as dp
ON dp.dept_no = dept_emp.dept_no
WHERE dp.dept_name = 'Sales'

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT dp.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees as e
JOIN dept_emp
ON e.emp_no = dept_emp.emp_no
JOIN departments as dp
ON dp.dept_no = dept_emp.dept_no
WHERE dp.dept_name = 'Sales' OR dp.dept_name = 'Development'


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
SELECT last_name, COUNT(last_name) as Frequency 
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
