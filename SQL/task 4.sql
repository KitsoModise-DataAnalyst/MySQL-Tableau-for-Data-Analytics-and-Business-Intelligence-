use employees_mod;

drop procedure if exists filter_salary;
delimiter $$
create procedure filter_salary (in p_min_salary float, in p_max_salary float)
begin
select
e.gender,
d.dept_name,
avg(s.salary) as avg_salary

from t_salaries s
join 
t_employees e on s.emp_no = s.emp_no
join
t_dept_emp de on e.emp_no = de.emp_no
join 
t_departments d on d.dept_no = de.dept_no

where s.salary between p_min_salary and p_max_salary
group by e.gender, d.dept_no;
END$$

DELIMITER ;

call filter_salary(50000, 90000);




