
SELECT
    YEAR(d.from_date) as calendar_year,
    e.gender,
    COUNT(e.emp_no) as no_of_employees
FROM
    t_employees e
    JOIN
    t_dept_emp d on e.emp_no = d.emp_no
GROUP BY
    calendar_year, e.gender
HAVING calendar_year >= 1990
ORDER BY calendar_year ASC;

