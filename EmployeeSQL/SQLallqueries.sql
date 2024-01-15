--Question 1 (list of employees)
Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from public."Employees" as e
Join public."Salaries" as s
on e.emp_no = s.emp_no

--Question 2(employees hired from 1986)
Select e.first_name, e.last_name, e.hire_date
from public."Employees" as e
WHERE hire_date BETWEEN ('1986-01-01') AND ('1986-12-31')

-- Question 3 (manager of each department)
Select dm.dept_no, d.dept_name, e.emp_no, e.first_name, e.last_name
from "Dept_manager" as dm
Inner join "Departments" as d
on dm.dept_no = d.dept_no
Inner join "Employees" as e
on dm.emp_no = e.emp_no

--question 4 (department of each employee)
select de.dept_no, e.emp_no, d.dept_name, e.first_name, e.last_name
from "Dept_emp" as de
inner join "Departments" as d
on d.dept_no = de.dept_no
inner join "Employees" as e
on e.emp_no = de.emp_no

--question 5 (Lastname starts with "b" and first name is Hercules)
Select e.first_name, e.last_name, e.sex
from "Employees" as e
where first_name like 'Hercules' 
and last_name like '%B%'

--question 6 (employees in the sales department)
Select d.dept_name 
from "Departments" as d
where dept_name = 'Sales' in(
select e.emp_no, e.first_name, e.last_name
from "Employees" as e
)





