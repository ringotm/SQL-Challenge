CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	birth_date DATE,
	first_name VARCHAR(32),
	last_name VARCHAR(32),
	gender CHAR(1),
	hire_date DATE
);

CREATE TABLE departments(
	dept_no CHAR(4) PRIMARY KEY NOT NULL,
	dept_name varchar(200)
);

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no CHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date DATE NOT NULL,
	to_date DATE,
	PRIMARY KEY (emp_no, dept_no, from_date)
);

CREATE TABLE dept_manager(
	dept_no CHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE titles (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	title VARCHAR(64) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE,
	PRIMARY KEY (emp_no, title, from_date)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE,
	PRIMARY KEY (emp_no, from_date)
);
