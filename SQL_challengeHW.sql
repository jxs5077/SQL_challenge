-- 1)
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salary.salary
from employees
inner join salary on
employees.emp_no=salary.emp_no


-- 2) 
select employees.first_name, employees.last_name, employees.hire_date
from employees
where hire_date LIKE'%1986'


-- 3)
select employees.emp_no, employees.first_name, employees.last_name, dept_manager.dept_no, departments.dept_name
from employees inner join dept_manager on employees.emp_no=dept_manager.emp_no
inner join departments on dept_manager.dept_no=departments.dept_no


-- 4)
select dept_emp.emp_no, employees.first_name, employees.last_name, departments.dept_name
from dept_emp inner join employees on employees.emp_no=dept_emp.emp_no
inner join departments on dept_emp.dept_no=departments.dept_no


-- 5)
select employees.first_name, employees.last_name, employees.sex
from employees
where employees.first_name = 'Hercules' AND last_name LIKE 'B%'


-- 6)
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp inner join  departments on dept_emp.dept_no=departments.dept_no
inner join employees on dept_emp.emp_no=employees.emp_no
where departments.dept_name='Sales'


-- 7)
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp inner join  departments on dept_emp.dept_no=departments.dept_no
inner join employees on dept_emp.emp_no=employees.emp_no
where departments.dept_name='Sales' or departments.dept_name='Development'


--8)
select employees.last_name, count(*)
from employees
group by last_name
order by count desc