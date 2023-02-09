-- Deliverable 1
-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.

select emp_no, first_name, last_name from employees

-- select title, from_date, to_date from Titles

select title, from_date, to_date from titles

-- Create a new table for retiring employees
select e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
into retirement_titles
from employees e
inner join titles t
on e.emp_no = t.emp_no
where birth_date between '1952-01-01' and '1955-12-31'
order by emp_no
; 

select * from retirement_titles;

-- Remove duplicate rows and create Unique Titles table

SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

select * from unique_titles;

-- Retiring titles table
select count(emp_no) count,	title
into retiring_titles
from unique_titles
group by title
order by count desc;

select * from retiring_titles

--Deliverable 2
--Mentorship Eligibility table

SELECT DISTINCT ON (e.emp_no) e.emp_no, 
		e.first_name, 
		e.last_name, 
		e.birth_date, 
		de.from_date, 
		de.to_date, 
		t.title
INTO mentorship_eligibility
FROM employees e
JOIN dept_emp de 
ON e.emp_no = de.emp_no
JOIN titles t 
ON e.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01'
AND e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY e.emp_no;

select * from mentorship_eligibility