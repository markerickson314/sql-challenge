-- one
select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees as e
inner join salaries as s on
e.emp_no = s.emp_no;

-- two
select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- three
select ds.dept_no, ds.dept_name, dm.emp_no, e.last_name, e.first_name
from departments as ds
inner join dept_manager as dm on ds.dept_no = dm.dept_no
inner join employees as e on dm.emp_no = e.emp_no;

-- four 
select e.emp_no, e.last_name, e.first_name, ds.dept_name
from employees as e
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as ds on de.dept_no = ds.dept_no;

-- five 
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- six
select e.emp_no, e.last_name, e.first_name, ds.dept_name
from employees as e
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as ds on de.dept_no = ds.dept_no
where ds.dept_name = 'Sales';

-- seven
select e.emp_no, e.last_name, e.first_name, ds.dept_name
from employees as e
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as ds on de.dept_no = ds.dept_no
where ds.dept_name = 'Sales' or ds.dept_name = 'Development';

-- eight
select last_name, count(last_name) as "count"
from employees
group by last_name
order by "count" desc;