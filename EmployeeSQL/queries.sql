SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
JOIN
salaries AS S
ON e.emp_no = s.emp_no
ORDER BY e.emp_no;

SELECT * FROM employees
WHERE hire_date > '1985-12-31' AND hire_date < '1987-01-01';

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager AS dm
JOIN departments AS d
ON dm.dept_no = d.dept_no
JOIN employees as e
ON dm.emp_no = e.emp_no;

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e
ON de.emp_no = e.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no;

SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN employees as e
ON de.emp_no = e.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN employees as e
ON de.emp_no = e.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' or d.dept_name = 'Development';

SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;