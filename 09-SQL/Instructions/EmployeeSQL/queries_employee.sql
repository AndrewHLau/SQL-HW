--#1 List employee number, last name, first name, sex, and salary
SELECT employee.emp_no, last_name, first_name, sex, salaries.salaries FROM employee
JOIN salaries ON employee.emp_no = salaries.emp_no;

--#2 List employee first name, last name, and hire date hired in 1986
SELECT first_name, last_name, hire_date FROM employee
WHERE hire_date Like '%86';

--#3 List Manager of each dept with dept number, dept name, managers emp no, last, first name
SELECT employee.first_name, employee.last_name,
deptmanager.emp_no, deptmanager.dept_no,department.dept_name FROM deptmanager
JOIN employee ON deptmanager.emp_no = employee.emp_no
JOIN department ON deptmanager.dept_no = department.dept_no;

--#4 List employee number, last name, first name, and dept name
SELECT employee.emp_no, last_name, first_name, department.dept_name FROM employee
JOIN deptemp ON employee.emp_no = deptemp.emp_no
JOIN department ON deptemp.dept_no = department.dept_no;

--#5 List First name, last name, and sex for employees with first Hercules and last name begins with B
SELECT first_name, last_name, sex FROM employee
WHERE  first_name='Hercules' AND last_name Like 'B%';

--#6 List all employees in Sales Dept, emp number, last name, first name, department name
SELECT employee.emp_no, last_name, first_name, department.dept_name FROM employee
JOIN deptemp ON employee.emp_no = deptemp.emp_no
JOIN department ON deptemp.dept_no = department.dept_no
WHERE dept_name='Sales';

--#7 List all employees in Sale and Development Depts, emp number, last name, first name, department name
SELECT employee.emp_no, last_name, first_name, department.dept_name FROM employee
JOIN deptemp ON employee.emp_no = deptemp.emp_no
JOIN department ON deptemp.dept_no = department.dept_no
WHERE dept_name='Sales' OR dept_name='Development';

--#8 In Desc order, list frequency count of employee last names
SELECT last_name, COUNT(last_name) AS "Total Frequency" FROM employee
GROUP BY last_name
ORDER BY last_name DESC; 
