-- Create titles table
Create Table titles (
	title_id VARCHAR(200) PRIMARY KEY NOT NULL,
	title VARCHAR(200) NOT NULL
);

--Create employees table
Create Table employees(
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title VARCHAR(200) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(200) NOT NULL,
	last_name VARCHAR(200) NOT NULL,
	sex VARCHAR(200)NOT NULL,
	hire_date DATE NOT NULL,
	foreign key (emp_title) references titles(title_id)
);

--Create departments table
Create Table departments(
	dept_no VARCHAR(200) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(200) NOT NULL
);

--Create dept_emp table
Create Table dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(200) NOT NULL,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

--Create dept_manager table
Create Table dept_manager (
	dept_no VARCHAR(200) NOT NULL,
	emp_no INT PRIMARY KEY NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

--Create salaries table
create table salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT NOT NULL,
    foreign key (emp_no) references employees (emp_no)
);
