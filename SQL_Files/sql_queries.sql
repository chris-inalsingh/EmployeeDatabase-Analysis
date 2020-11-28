--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date
From employees
where hire_date >'1986-01-01' AND hire_date < '1987-01-01';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
From dept_manager
JOIN departments
on dept_manager.dept_no = departments.dept_no
Join employees
on employees.emp_no = dept_manager.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
Select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
From dept_emp
Join employees
on employees.emp_no = dept_emp.emp_no
Join departments
on dept_emp.dept_no = departments.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select first_name, last_name, sex
from employees
Where employees.first_name = 'Hercules' and employees.last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
Join dept_emp
on dept_emp.emp_no = employees.emp_no
Join departments
on departments.dept_no = dept_emp.dept_no
Where departments.dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
Join dept_emp
on dept_emp.emp_no = employees.emp_no
Join departments
on departments.dept_no = dept_emp.dept_no
Where departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select employees.last_name, count(employees.last_name) As last_name_count
from employees
Group by employees.last_name
Order by last_name_count DESC;