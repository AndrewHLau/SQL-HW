CREATE TABLE department (
    Dept_no VARCHAR(255)   NOT NULL,
    Dept_name VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_department PRIMARY KEY (
        Dept_no
     )
);

CREATE TABLE deptemp (
    Emp_no INT   NOT NULL,
    Dept_no VARCHAR(255)   NOT NULL
);

CREATE TABLE department_employee_junction (
    Dept_no VARCHAR(255)   NOT NULL,
    Emp_no INT   NOT NULL
);

CREATE TABLE employee (
    Emp_no INT   NOT NULL,
    Emp_title_id VARCHAR(255)   NOT NULL,
    Birth_date VARCHAR(255)   NOT NULL,
    First_name VARCHAR(255)   NOT NULL,
    Last_name VARCHAR(255)   NOT NULL,
    Sex VARCHAR(30)   NOT NULL,
    Hire_date VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_employee PRIMARY KEY (
        Emp_no
     )
);

CREATE TABLE deptmanager (
    Dept_no VARCHAR(255)   NOT NULL,
    Emp_no INT   NOT NULL
);

CREATE TABLE salaries (
    Emp_no INT   NOT NULL,
    Salaries INT   NOT NULL
);

CREATE TABLE title (
    Emp_title_id VARCHAR(255)   NOT NULL,
    Title VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_title PRIMARY KEY (
        Emp_title_id
     )
);

ALTER TABLE deptemp ADD CONSTRAINT fk_deptemp_Dept_no FOREIGN KEY(Dept_no)
REFERENCES department (Dept_no);

ALTER TABLE department_employee_junction ADD CONSTRAINT fk_department_employee_junction_Dept_no FOREIGN KEY(Dept_no)
REFERENCES department (Dept_no);

ALTER TABLE department_employee_junction ADD CONSTRAINT fk_department_employee_junction_Emp_no FOREIGN KEY(Emp_no)
REFERENCES employee (Emp_no);

ALTER TABLE employee ADD CONSTRAINT fk_employee_Emp_title_id FOREIGN KEY(Emp_title_id)
REFERENCES title (Emp_title_id);

ALTER TABLE deptmanager ADD CONSTRAINT fk_deptmanager_Dept_no FOREIGN KEY(Dept_no)
REFERENCES department (Dept_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_Emp_no FOREIGN KEY(Emp_no)
REFERENCES employee (Emp_no);