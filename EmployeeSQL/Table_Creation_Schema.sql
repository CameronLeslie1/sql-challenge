-- Creating tables for each of the provided CSV files

CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id));
	
CREATE TABLE employees (
	emp_no int not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	primary key (emp_no),
	foreign key (emp_title_id) references titles (title_id));

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary int not null,
	primary key (emp_no),
	foreign key (emp_no) references employees (emp_no));
	
CREATE TABLE departments (
	dept_no varchar not null,
	dept_name varchar not null,
	primary key (dept_no));
	
CREATE TABLE dept_emp (
	emp_no int not null,
	dept_no varchar not null,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees (emp_no));
	
CREATE TABLE dept_manager (
	dept_no varchar not null,
	emp_no int not null,
	primary key (emp_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no));
	
select * from dept_manager