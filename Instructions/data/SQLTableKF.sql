CREATE TABLE employees (
    emp_no INTEGER   NOT NULL,
    emp_title_id VARCHAR(5)   NOT NULL,
    birth_date timestamp   NOT NULL,
    first_name VARCHAR(30)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    sex VARCHAR(5)   NOT NULL,
    hire_date timestamp   NOT NULL,
    PRIMARY KEY (emp_no)
	--Foreign key (emp_no) References dept_emp(emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR(5)   NOT NULL,
    title VARCHAR(30)   NOT NULL,
    PRIMARY KEY (title_id)
	--Foreign key (title_id) References employees (emp_title_id)
);

CREATE TABLE departments (
    dept_no VARCHAR(5)   NOT NULL,
    dept_name VARCHAR(30)   NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(5)   NOT NULL,
    emp_no INTEGER   NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
	Foreign key (dept_no) References departments(dept_no)
);

CREATE TABLE dept_emp (
    emp_no INTEGER   NOT NULL,
    dept_no VARCHAR(5)   NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	Foreign key (dept_no) References departments(dept_no),
	Foreign key (emp_no) References employees(emp_no)
);

CREATE TABLE salaries (
    emp_no INTEGER   NOT NULL,
    salary INTEGER   NOT NULL,
    PRIMARY KEY (emp_no),
	Foreign key (emp_no) References employees (emp_no)
);