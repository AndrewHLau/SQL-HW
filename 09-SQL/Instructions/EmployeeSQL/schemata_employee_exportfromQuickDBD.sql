-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "Department" (
    "Dept_no" VARCHAR(255)   NOT NULL,
    "Dept_name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "Dept_no"
     )
);

CREATE TABLE "DeptEmp" (
    "Emp_no" INT   NOT NULL,
    "Dept_no" VARCHAR(255)   NOT NULL
);

CREATE TABLE "Department_Employee_Junction" (
    "Dept_no" VARCHAR(255)   NOT NULL,
    "Emp_no" INT   NOT NULL
);

CREATE TABLE "Employee" (
    "Emp_no" INT   NOT NULL,
    "Emp_title_id" VARCHAR(255)   NOT NULL,
    "Birth_date" VARCHAR(255)   NOT NULL,
    "First_name" VARCHAR(255)   NOT NULL,
    "Last_name" VARCHAR(255)   NOT NULL,
    "Sex" VARCHAR(30)   NOT NULL,
    "Hire_date" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "DeptManager" (
    "Dept_no" VARCHAR(255)   NOT NULL,
    "Emp_no" INT   NOT NULL
);

CREATE TABLE "Salaries" (
    "Emp_no" INT   NOT NULL,
    "Salaries" INT   NOT NULL
);

CREATE TABLE "Title" (
    "Emp_title_id" VARCHAR(255)   NOT NULL,
    "Title" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Title" PRIMARY KEY (
        "Emp_title_id"
     )
);

ALTER TABLE "DeptEmp" ADD CONSTRAINT "fk_DeptEmp_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Department" ("Dept_no");

ALTER TABLE "Department_Employee_Junction" ADD CONSTRAINT "fk_Department_Employee_Junction_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Department" ("Dept_no");

ALTER TABLE "Department_Employee_Junction" ADD CONSTRAINT "fk_Department_Employee_Junction_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employee" ("Emp_no");

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_Emp_title_id" FOREIGN KEY("Emp_title_id")
REFERENCES "Title" ("Emp_title_id");

ALTER TABLE "DeptManager" ADD CONSTRAINT "fk_DeptManager_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Department" ("Dept_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employee" ("Emp_no");

