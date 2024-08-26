DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;


--Creating all the tables to upload for the repective csv files.

CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR NOT NULL
);


CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(50),
	birth_date TEXT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex CHAR(1) NOT NULL,
	hire_date TEXT,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);


CREATE TABLE salaries (
    emp_no INT NOT NULL,
	salary INT NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);


CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);


CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);


--Viewing all the tables.

SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;

