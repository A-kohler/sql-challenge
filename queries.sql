select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from titles;


select  emp.emp_no, 
emp.last_name, 
emp.first_name,
sal.salary
from employees as emp
left join salaries as sal
on (emp.emp_no = sal.emp_no)


select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and'1986-12-31';


select  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        emp.last_name,
        emp.first_name
from dept_manager as dm
inner join departments as d
on (dm.dept_no = d.dept_no)
inner join employees as emp
on (dm.emp_no = e.emp_no)
;


select  emp.emp_no,
        emp.last_name,
        emp.first_name,
        d.dept_name
from employees as emp
inner join dept_emp AS de
on (e.emp_no = de.emp_no)
inner join departments AS d
on (de.dept_no = d.dept_no)
order by e.emp_no;


select  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
from employees as e
inner join dept_emp as de
ON (e.emp_no = de.emp_no)
inner join departments AS d
on (de.dept_no = d.dept_no)
where d.dept_name = 'Sales'
order by e.emp_no;


select first_name, last_name, birth_date, sex
from employees
where first_name = 'Hercules'
AND last_name LIKE 'B%';


select  e.emp_no,
        e.last_name,
        e.first_name,
        d.dept_name
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join departments as d
on (de.dept_no = d.dept_no)
where d.dept_name in ('Sales', 'Development')
order by e.emp_no;


select last_name, count (last_name)
from employees
group by (last_name) as "frequency"
order by count (last_name) desc;
