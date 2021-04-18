-- Select retiring current employees, order by emp_no (deliverable 1 steps 1 - 7)
SELECT e.emp_no,
    e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date 
INTO retirement_titles
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	 AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Select retiring current employees, order by emp_no (deliverable 1 steps 9 - 14)
SELECT DISTINCT ON (emp_no) emp_no,
    first_name,
	last_name,
	title,
	from_date,
	to_date 
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Count the employees retiring by title (deliverable 1 steps 15 - 21)
SELECT COUNT(emp_no),
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

-- Select eleigible candidates for the mentorship program (deliverable 2)
SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentor_titles
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	 AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no, ti.to_date DESC;