Select *
From employees;

--1
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees join salaries  on employees.emp_no = salaries.emp_no;


--2
Select emp_no, last_name, first_name, hire_date
From employees 
Where hire_date >= '1986-01-01'::date and hire_date < '1987-01-01'::date;


--3
Select departments.dept_no, departments.dept_name,
employees.emp_no, employees.last_name, employees.first_name
From departments JOIN dept_manager on departments.dept_no = 
dept_manager.dept_no JOIN employees on dept_manager.emp_no = employees.emp_no;


--4
Select employees.emp_no,
employees.last_name, employees.first_name, departments.dept_name
From departments JOIN dept_emp on departments.dept_no =
dept_emp.dept_no JOIN employees on dept_emp.emp_no = employees.emp_no;


--5
Select emp_no, last_name, first_name, sex
From employees 
Where first_name = 'Hercules' AND last_name LIKE 'B%';

--6
Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
Where departments.dept_name = 'Sales';

--7
Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From departments JOIN dept_emp on departments.dept_no = dept_emp.dept_no
JOIN employees on dept_emp.emp_no = employees.emp_no
Where departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--8
Select  last_name, COUNT(*) as counts
From employees 
GROUP BY last_name
ORDER BY counts DESC;







