-- Data Analysis

-- List the employee number, last name, first name, sex, and salary of each employee.

Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s on e.emp_no = s.emp_no
order by emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.

Select last_name, first_name, hire_date
from employees where hire_date >= '1986-01-01' and hire_date <= '1986-12-31'
Order by hire_date;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT d.dept_no, d.dept_name, dm.emp_no AS manager_emp_no, e.last_name AS manager_last_name, e.first_name AS manager_first_name
FROM departments d
INNER JOIN dept_manager dm ON d.dept_no = dm.dept_no
INNER JOIN employees e ON dm.emp_no = e.emp_no
Order by dm.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

Select de.emp_no, e.last_name, e.first_name, d.dept_no, d.dept_name
From dept_emp de
Inner join departments d on de.dept_no = d.dept_no
inner join employees e on de.emp_no = e.emp_no
Order by de.emp_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

Select last_name, first_name, sex
from employees where first_name = 'Hercules' and last_name like 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.

Select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
Inner join dept_emp de on e.emp_no = de.emp_no
Inner join departments d on de.dept_no = d.dept_no
Where d.dept_name = 'Sales'
Order by e.emp_no;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
Inner join dept_emp de on e.emp_no = de.emp_no
Inner join departments d on de.dept_no = d.dept_no
Where d.dept_name = 'Sales' or d.dept_name = 'Development'
Order by e.emp_no;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Select last_name, Count(*) as Frequency
from employees
group by last_name
order by Frequency Desc;
